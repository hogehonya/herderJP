//! Listing the chats a Voice Bridge can attach to.

use std::{fs, io, path::Path, time::Instant};

use herdr_chat_protocol::EndpointId;
use serde::Serialize;

use crate::{client::Timeouts, endpoint, error::{Error, Result}};

/// The most endpoints one list returns.
const MAX_ENDPOINTS: usize = 64;
/// The most directory entries one list examines, so a crowded directory cannot
/// make the request unbounded.
const MAX_SCAN: usize = 1024;

#[derive(Debug, Serialize)]
pub(crate) struct ListResult {
    pub(crate) endpoints: Vec<ListedEndpoint>,
    pub(crate) errors: Vec<ListError>,
}

#[derive(Debug, Serialize)]
pub(crate) struct ListedEndpoint {
    pub(crate) endpoint_id: String,
}

/// One candidate that looked like an endpoint but could not be used. A stale
/// socket is reported here instead of disappearing from the result.
#[derive(Debug, Serialize)]
pub(crate) struct ListError {
    pub(crate) code: String,
    pub(crate) endpoint_id: String,
    pub(crate) message: String,
}

pub(crate) fn list(dir: &Path, timeouts: &Timeouts) -> Result<ListResult> {
    let mut candidates = Vec::new();
    let entries = match fs::read_dir(dir) {
        Ok(entries) => entries,
        Err(error) if error.kind() == io::ErrorKind::NotFound => {
            return Ok(ListResult {
                endpoints: Vec::new(),
                errors: Vec::new(),
            });
        }
        Err(error) => return Err(Error::EndpointDir(error)),
    };
    for entry in entries.take(MAX_SCAN) {
        let entry = entry.map_err(Error::EndpointDir)?;
        if let Some(endpoint_id) = endpoint_id_from_path(&entry.path()) {
            candidates.push(endpoint_id);
        }
    }
    candidates.sort_by(|left, right| left.as_str().cmp(right.as_str()));

    let owner = endpoint::current_uid();
    let deadline = Instant::now().checked_add(timeouts.total);
    let mut endpoints = Vec::new();
    let mut errors = Vec::new();
    for endpoint_id in candidates {
        if endpoints.len() == MAX_ENDPOINTS {
            break;
        }
        let connect_timeout = deadline.map_or(timeouts.connect, |deadline| {
            deadline
                .saturating_duration_since(Instant::now())
                .min(timeouts.connect)
        });
        if connect_timeout.is_zero() {
            break;
        }
        let path = endpoint::path(dir, &endpoint_id);
        let result = endpoint::validate(&path, &endpoint_id, owner).and_then(|()| {
            endpoint::connect(&path, &endpoint_id, connect_timeout).map(drop)
        });
        match result {
            Ok(()) => endpoints.push(ListedEndpoint {
                endpoint_id: endpoint_id.to_string(),
            }),
            Err(error) => errors.push(ListError {
                code: error.code().to_owned(),
                endpoint_id: endpoint_id.to_string(),
                message: error.to_string(),
            }),
        }
    }
    Ok(ListResult { endpoints, errors })
}

/// The endpoint id in `name.sock`, when the name is exactly 32 lowercase
/// hexadecimal digits.
fn endpoint_id_from_path(path: &Path) -> Option<EndpointId> {
    let name = path.file_name()?.to_str()?;
    let id = name.strip_suffix(".sock")?;
    id.parse::<EndpointId>().ok()
}
