use super::*;
use crate::{
    error::Error,
    list::ListResult,
    request::{self, MAX_REQUEST_BYTES, Request},
    response::{Body, Response},
};

#[test]
fn requests_are_one_json_object() {
    assert!(matches!(
        request::parse_request(br#"{"op":"list"}"#).unwrap(),
        Request::List
    ));

    let prompt_json = serde_json::json!({
        "op": "prompt",
        "endpoint_id": "0123456789abcdef".repeat(2),
        "epoch": Uuid::from_u128(1).to_string(),
        "text": "hi",
        "command_id": Uuid::from_u128(2).to_string(),
    });
    let prompt = request::parse_request(prompt_json.to_string().as_bytes()).unwrap();
    match prompt {
        Request::Prompt {
            text, command_id, ..
        } => {
            assert_eq!(text, "hi");
            assert_eq!(command_id, Some(CommandId(Uuid::from_u128(2))));
        }
        other => panic!("expected prompt, got {other:?}"),
    }

    assert!(matches!(
        request::parse_request(br#"{"op":"nope"}"#),
        Err(Error::RequestJson(_))
    ));
    assert!(matches!(
        request::parse_request(b"   "),
        Err(Error::EmptyRequest)
    ));
    let oversized = vec![b' '; MAX_REQUEST_BYTES + 1];
    assert!(matches!(
        request::parse_request(&oversized),
        Err(Error::RequestTooLarge)
    ));
}

#[test]
fn responses_are_ok_or_error_objects() {
    let response = Response::success(Body::List(ListResult {
        endpoints: Vec::new(),
        errors: Vec::new(),
        truncated: false,
    }));
    assert_eq!(
        serde_json::to_value(&response).unwrap(),
        serde_json::json!({
            "ok": true,
            "result": {"endpoints": [], "errors": [], "truncated": false},
        })
    );

    let response = Response::success(Body::List(ListResult {
        endpoints: Vec::new(),
        errors: Vec::new(),
        truncated: true,
    }));
    assert!(
        serde_json::to_value(&response).unwrap()["result"]["truncated"]
            .as_bool()
            .unwrap()
    );

    let response = Response::failure(&Error::PromptEmpty);
    let json = serde_json::to_value(&response).unwrap();
    assert_eq!(json["ok"], false);
    assert_eq!(json["error"]["code"], "prompt_empty");
    assert!(json["error"]["message"].as_str().unwrap().contains("空"));
}
