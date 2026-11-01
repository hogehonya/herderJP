use super::*;
use crate::{error::Error, ops};
use herdr_chat_protocol::Rejection;

#[test]
fn prompt_sends_the_native_command_and_waits_for_its_ack() {
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
            Command::Prompt {
                attachments: Vec::new(),
                text: "hello".to_owned(),
            }
        );
        send_ack(writer, id, None)
    });

    let result = ops::prompt(
        dir.path(),
        &endpoint_id,
        epoch,
        "hello",
        Some(command_id),
        &fast(),
    )
    .unwrap();
    server.join().unwrap();

    assert!(result.accepted);
    assert_eq!(result.command_id, command_id);
    assert_eq!(result.endpoint_id, endpoint_id.to_string());
}

#[test]
fn prompt_rejects_empty_and_oversized_text_before_connecting() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(1);

    let error = ops::prompt(dir.path(), &endpoint_id, epoch, "   ", None, &fast()).unwrap_err();
    assert!(matches!(error, Error::PromptEmpty));

    let long = "x".repeat(herdr_chat_protocol::MAX_PROMPT_SIZE + 1);
    let error = ops::prompt(dir.path(), &endpoint_id, epoch, &long, None, &fast()).unwrap_err();
    assert!(matches!(error, Error::PromptTooLong));
}

#[test]
fn a_mismatching_ack_is_ignored_until_the_matching_ack_arrives() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(1);
    let command_id = CommandId(Uuid::from_u128(99));
    let other = CommandId(Uuid::from_u128(100));
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(epoch), transcript(), None)?;
        let (id, _) = read_command(reader);
        send_ack(writer, other, Some(Rejection::UnknownPermission))?;
        send_ack(writer, id, None)
    });

    let result = ops::prompt(
        dir.path(),
        &endpoint_id,
        epoch,
        "hello",
        Some(command_id),
        &fast(),
    )
    .unwrap();
    server.join().unwrap();

    assert!(result.accepted);
    assert_eq!(result.command_id, command_id);
}

#[test]
fn a_mismatching_ack_alone_is_not_success() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(1);
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(epoch), transcript(), None)?;
        let _ = read_command(reader);
        send_ack(
            writer,
            CommandId(Uuid::from_u128(100)),
            Some(Rejection::UnknownPermission),
        )
    });

    let error = ops::prompt(dir.path(), &endpoint_id, epoch, "hello", None, &fast()).unwrap_err();
    server.join().unwrap();

    assert!(matches!(error, Error::ConnectionClosed));
}
