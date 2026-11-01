//! The chat sockets the Voice API may reach.
//!
//! A request names an endpoint id, never a path: the path always comes from
//! `herdr-chat-protocol`'s private directory. The caller cannot select another
//! user's socket, a symlink, or a regular file.

use std::{
    fs, io,
    os::unix::{
        fs::{FileTypeExt, MetadataExt},
        net::UnixStream,
    },
    path::{Path, PathBuf},
    sync::mpsc,
    time::Duration,
};

use herdr_chat_protocol::EndpointId;

use crate::error::{Error, Result};

/// The socket for `endpoint_id` in the private chat directory.
pub(crate) fn path(dir: &Path, endpoint_id: &EndpointId) -> PathBuf {
    herdr_chat_protocol::endpoint_path(dir, endpoint_id)
}

/// The user this process runs as.
pub(crate) fn current_uid() -> u32 {
    rustix::process::geteuid().as_raw()
}

/// Checks that `path` is a socket this user owns and not a symlink.
pub(crate) fn validate(path: &Path, endpoint_id: &EndpointId, owner: u32) -> Result<()> {
    let metadata = match fs::symlink_metadata(path) {
        Ok(metadata) => metadata,
        Err(error) if error.kind() == io::ErrorKind::NotFound => {
            return Err(Error::EndpointNotFound {
                endpoint_id: endpoint_id.clone(),
            });
        }
        Err(source) => {
            return Err(Error::EndpointMetadata {
                endpoint_id: endpoint_id.clone(),
                source,
            });
        }
    };
    if metadata.file_type().is_symlink() {
        return Err(Error::SymlinkEndpoint {
            endpoint_id: endpoint_id.clone(),
        });
    }
    if !metadata.file_type().is_socket() {
        return Err(Error::NotSocket {
            endpoint_id: endpoint_id.clone(),
        });
    }
    if metadata.uid() != owner {
        return Err(Error::NotOwner {
            endpoint_id: endpoint_id.clone(),
        });
    }
    Ok(())
}

/// Connects to `path`, giving up after `timeout`.
///
/// `std` has no connect timeout for Unix sockets. One bounded worker performs
/// the connect so a listener with a full backlog cannot hold the CLI forever;
/// if the worker finishes after the timeout, dropping its result closes the
/// stream.
pub(crate) fn connect(
    path: &Path,
    endpoint_id: &EndpointId,
    timeout: Duration,
) -> Result<UnixStream> {
    let path = path.to_owned();
    let (sender, receiver) = mpsc::sync_channel(1);
    std::thread::Builder::new()
        .name("voice-connect".to_owned())
        .spawn(move || {
            let _ = sender.send(UnixStream::connect(path));
        })
        .map_err(|source| Error::Connect {
            endpoint_id: endpoint_id.clone(),
            source,
        })?;
    match receiver.recv_timeout(timeout) {
        Ok(Ok(stream)) => Ok(stream),
        Ok(Err(source)) => Err(Error::Connect {
            endpoint_id: endpoint_id.clone(),
            source,
        }),
        Err(mpsc::RecvTimeoutError::Timeout) => Err(Error::Timeout {
            endpoint_id: endpoint_id.clone(),
        }),
        Err(mpsc::RecvTimeoutError::Disconnected) => Err(Error::Connect {
            endpoint_id: endpoint_id.clone(),
            source: io::Error::other("connection worker stopped"),
        }),
    }
}
