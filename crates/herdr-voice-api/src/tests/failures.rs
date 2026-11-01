use super::*;
use crate::{
    error::Error,
    ops::{self, Decision},
    request,
};
use herdr_chat_protocol::Rejection;
use std::thread;

#[test]
fn a_stale_epoch_is_rejected_before_a_command_is_written() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let current = Uuid::from_u128(1);
    let requested = Uuid::from_u128(2);
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(current), transcript(), None)?;
        assert_no_command(reader);
        Ok(())
    });

    let error =
        ops::prompt(dir.path(), &endpoint_id, requested, "hello", None, &fast()).unwrap_err();
    server.join().unwrap();

    assert!(matches!(error, Error::EpochMismatch { .. }));
}

#[test]
fn answering_a_permission_that_is_not_pending_writes_nothing() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(1);
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(epoch), transcript(), None)?;
        assert_no_command(reader);
        Ok(())
    });

    let error = ops::answer(
        dir.path(),
        &endpoint_id,
        epoch,
        99,
        Decision::Approve,
        None,
        &fast(),
    )
    .unwrap_err();
    server.join().unwrap();

    assert!(matches!(
        error,
        Error::UnknownPermission { permission_id: 99 }
    ));
}

#[test]
fn a_chat_rejection_is_returned_with_its_code() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(1);
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(epoch), transcript(), None)?;
        let (id, _) = read_command(reader);
        send_ack(writer, id, Some(Rejection::UnknownPermission))
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

    assert!(matches!(
        error,
        Error::Rejected {
            code: "unknown_permission",
            ..
        }
    ));
}

#[test]
fn prompt_refuses_when_the_agent_cannot_take_prompts() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(1);
    let mut body = transcript();
    body.status = Status::Failed {
        message: "agent stopped".to_owned(),
    };
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(epoch), body, None)?;
        assert_no_command(reader);
        Ok(())
    });

    let error = ops::prompt(dir.path(), &endpoint_id, epoch, "hello", None, &fast()).unwrap_err();
    server.join().unwrap();

    assert!(matches!(error, Error::NotReady));
}

#[test]
fn a_read_only_chat_refuses_to_send_a_prompt() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(1);
    let mut body = transcript();
    body.read_only = true;
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(epoch), body, None)?;
        assert_no_command(reader);
        Ok(())
    });

    let error = ops::prompt(dir.path(), &endpoint_id, epoch, "hello", None, &fast()).unwrap_err();
    server.join().unwrap();

    assert!(matches!(error, Error::ReadOnly));
}

#[test]
fn a_silent_endpoint_times_out() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, _writer| {
        let _hello = read_frame::<_, ClientMessage>(reader)?;
        thread::sleep(Duration::from_millis(300));
        Ok(())
    });

    let error = ops::snapshot(dir.path(), &endpoint_id, &short()).unwrap_err();
    server.join().unwrap();

    assert!(matches!(error, Error::Timeout { .. }));
}

#[test]
fn a_malformed_frame_is_a_protocol_error() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        let _hello = read_frame::<_, ClientMessage>(reader)?;
        write_raw(writer, &0u32.to_le_bytes())?;
        Ok(())
    });

    let error = ops::snapshot(dir.path(), &endpoint_id, &fast()).unwrap_err();
    server.join().unwrap();

    assert!(matches!(error, Error::Frame(_)));
}

#[test]
fn endpoint_ids_are_strict_lowercase_hexadecimal() {
    assert!(matches!(
        request::parse_endpoint("not-an-id"),
        Err(Error::InvalidEndpointId)
    ));
    assert!(matches!(
        request::parse_endpoint(&"ABCDEF0123456789".repeat(2)),
        Err(Error::InvalidEndpointId)
    ));
    assert!(request::parse_endpoint(&"0123456789abcdef".repeat(2)).is_ok());
}
