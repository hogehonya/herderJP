//! Reading one request from stdin and dispatching it.

use std::io::{BufRead, BufReader, Read};

use herdr_chat_protocol::{CommandId, EndpointId, endpoint_dir};
use serde::Deserialize;
use uuid::Uuid;

use crate::{
    client::Timeouts,
    error::{Error, Result},
    list,
    ops::{self, Decision},
    response::{Body, Response},
};

/// The largest request stdin may carry.
pub(crate) const MAX_REQUEST_BYTES: usize = 1024 * 1024;

#[derive(Debug, Deserialize)]
#[serde(tag = "op", rename_all = "snake_case")]
pub(crate) enum Request {
    List,
    Snapshot {
        endpoint_id: String,
    },
    Prompt {
        endpoint_id: String,
        epoch: Uuid,
        text: String,
        #[serde(default)]
        command_id: Option<CommandId>,
    },
    Answer {
        endpoint_id: String,
        epoch: Uuid,
        permission_id: u64,
        decision: Decision,
        #[serde(default)]
        command_id: Option<CommandId>,
    },
}

pub(crate) fn run() -> Response {
    match read_request().and_then(execute) {
        Ok(body) => Response::success(body),
        Err(error) => Response::failure(&error),
    }
}

fn read_request() -> Result<Request> {
    let stdin = std::io::stdin();
    let mut input = Vec::new();
    let mut reader = BufReader::new(stdin.lock().take((MAX_REQUEST_BYTES + 1) as u64));
    let read = reader
        .read_until(b'\n', &mut input)
        .map_err(Error::RequestRead)?;
    if read == 0 {
        return Err(Error::EmptyRequest);
    }
    parse_request(&input)
}

pub(crate) fn parse_request(input: &[u8]) -> Result<Request> {
    if input.len() > MAX_REQUEST_BYTES {
        return Err(Error::RequestTooLarge);
    }
    if input.iter().all(|byte| byte.is_ascii_whitespace()) {
        return Err(Error::EmptyRequest);
    }
    serde_json::from_slice(input).map_err(Error::RequestJson)
}

pub(crate) fn parse_endpoint(value: &str) -> Result<EndpointId> {
    value
        .parse::<EndpointId>()
        .map_err(|_| Error::InvalidEndpointId)
}

fn execute(request: Request) -> Result<Body> {
    let dir = endpoint_dir().ok_or(Error::NoEndpointDir)?;
    let timeouts = Timeouts::default();
    match request {
        Request::List => list::list(&dir, &timeouts).map(Body::List),
        Request::Snapshot { endpoint_id } => {
            let endpoint_id = parse_endpoint(&endpoint_id)?;
            ops::snapshot(&dir, &endpoint_id, &timeouts)
                .map(|snapshot| Body::Snapshot(Box::new(snapshot)))
        }
        Request::Prompt {
            endpoint_id,
            epoch,
            text,
            command_id,
        } => {
            let endpoint_id = parse_endpoint(&endpoint_id)?;
            ops::prompt(&dir, &endpoint_id, epoch, &text, command_id, &timeouts).map(Body::Prompt)
        }
        Request::Answer {
            endpoint_id,
            epoch,
            permission_id,
            decision,
            command_id,
        } => {
            let endpoint_id = parse_endpoint(&endpoint_id)?;
            ops::answer(
                &dir,
                &endpoint_id,
                epoch,
                permission_id,
                decision,
                command_id,
                &timeouts,
            )
            .map(Body::Answer)
        }
    }
}
