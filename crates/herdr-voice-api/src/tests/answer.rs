use super::*;
use crate::{error::Error, ops::{self, Decision, select_option}};

#[test]
fn approve_uses_allow_once_even_when_allow_always_is_offered_first() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(1);
    let command_id = CommandId(Uuid::from_u128(99));
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(epoch), transcript(), None)?;
        let (id, command) = read_command(reader);
        assert_eq!(id, command_id);
        assert_eq!(
            command,
            Command::Answer {
                option: "once".to_owned(),
                permission: PermissionId(7),
            }
        );
        send_ack(writer, id, None)
    });

    let result = ops::answer(
        dir.path(),
        &endpoint_id,
        epoch,
        7,
        Decision::Approve,
        Some(command_id),
        &fast(),
    )
    .unwrap();
    server.join().unwrap();

    assert!(result.accepted);
    assert_eq!(result.command_id, command_id);
    assert_eq!(result.permission_id, 7);
    assert_eq!(result.option_kind, PermissionKind::AllowOnce);
}

#[test]
fn deny_uses_reject_once() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(1);
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(epoch), transcript(), None)?;
        let (id, command) = read_command(reader);
        assert_eq!(
            command,
            Command::Answer {
                option: "reject".to_owned(),
                permission: PermissionId(7),
            }
        );
        send_ack(writer, id, None)
    });

    let result = ops::answer(
        dir.path(),
        &endpoint_id,
        epoch,
        7,
        Decision::Deny,
        None,
        &fast(),
    )
    .unwrap();
    server.join().unwrap();

    assert_eq!(result.decision, Decision::Deny);
    assert_eq!(result.option_kind, PermissionKind::RejectOnce);
}

#[test]
fn deny_falls_back_to_reject_always_but_approve_never_uses_allow_always() {
    let permission = Permission {
        call_id: None,
        id: PermissionId(7),
        options: vec![
            PermissionOption {
                id: "always".to_owned(),
                kind: PermissionKind::AllowAlways,
                name: "Always".to_owned(),
            },
            PermissionOption {
                id: "never".to_owned(),
                kind: PermissionKind::RejectAlways,
                name: "Never".to_owned(),
            },
        ],
        title: "Run tests?".to_owned(),
    };

    assert!(select_option(&permission, Decision::Approve).is_none());
    assert_eq!(select_option(&permission, Decision::Deny).unwrap().id, "never");
}

#[test]
fn answer_without_a_matching_option_writes_nothing() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(1);
    let body = transcript_with_options(vec![PermissionOption {
        id: "always".to_owned(),
        kind: PermissionKind::AllowAlways,
        name: "Always".to_owned(),
    }]);
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(epoch), body, None)?;
        assert_no_command(reader);
        Ok(())
    });

    let error = ops::answer(
        dir.path(),
        &endpoint_id,
        epoch,
        7,
        Decision::Approve,
        None,
        &fast(),
    )
    .unwrap_err();
    server.join().unwrap();

    assert!(matches!(error, Error::NoMatchingOption));
}
