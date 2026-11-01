use std::{fs, os::unix::fs::symlink};

use super::*;
use crate::{endpoint, error::Error, list};

#[test]
fn list_of_a_missing_directory_is_empty() {
    let dir = tmpdir();
    let result = list::list(&dir.path().join("missing"), &fast()).unwrap();
    assert!(result.endpoints.is_empty());
    assert!(result.errors.is_empty());
}

#[test]
fn list_returns_live_sockets_and_reports_every_failed_candidate() {
    let dir = tmpdir();
    let live = EndpointId::random();
    let live_path = socket(dir.path(), &live);
    let server = spawn_server(&live_path, move |reader, _writer| {
        // The probe connects and closes without a greeting.
        assert!(read_frame::<_, ClientMessage>(reader)?.is_none());
        Ok(())
    });

    let stale = EndpointId::random();
    let stale_path = socket(dir.path(), &stale);
    drop(UnixListener::bind(&stale_path).unwrap());

    let regular = EndpointId::random();
    fs::File::create(socket(dir.path(), &regular)).unwrap();

    let linked = EndpointId::random();
    let linked_path = socket(dir.path(), &linked);
    symlink(&live_path, &linked_path).unwrap();

    fs::File::create(dir.path().join("notes.txt")).unwrap();

    let result = list::list(dir.path(), &fast()).unwrap();
    server.join().unwrap();

    assert_eq!(result.endpoints.len(), 1);
    assert_eq!(result.endpoints[0].endpoint_id, live.to_string());
    assert!(
        result.errors.iter().any(|error| {
            error.endpoint_id == stale.to_string() && error.code == "connect_failed"
        })
    );
    assert!(
        result.errors.iter().any(|error| {
            error.endpoint_id == regular.to_string() && error.code == "not_socket"
        })
    );
    assert!(result.errors.iter().any(|error| {
        error.endpoint_id == linked.to_string() && error.code == "symlink_endpoint"
    }));
    assert!(
        result
            .errors
            .iter()
            .all(|error| error.endpoint_id != "notes.txt")
    );
}

#[test]
fn endpoint_validation_rejects_symlinks_other_owners_and_non_sockets() {
    let dir = tmpdir();
    let id = EndpointId::random();
    let path = socket(dir.path(), &id);
    drop(UnixListener::bind(&path).unwrap());
    let owner = endpoint::current_uid();

    assert!(matches!(
        endpoint::validate(&path, &id, owner.wrapping_add(1)),
        Err(Error::NotOwner { .. })
    ));

    let linked = EndpointId::random();
    let linked_path = socket(dir.path(), &linked);
    symlink(&path, &linked_path).unwrap();
    assert!(matches!(
        endpoint::validate(&linked_path, &linked, owner),
        Err(Error::SymlinkEndpoint { .. })
    ));

    let regular = EndpointId::random();
    let regular_path = socket(dir.path(), &regular);
    fs::File::create(&regular_path).unwrap();
    assert!(matches!(
        endpoint::validate(&regular_path, &regular, owner),
        Err(Error::NotSocket { .. })
    ));

    let missing = EndpointId::random();
    assert!(matches!(
        endpoint::validate(&socket(dir.path(), &missing), &missing, owner),
        Err(Error::EndpointNotFound { .. })
    ));
}
