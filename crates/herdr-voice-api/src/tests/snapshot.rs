use super::*;
use crate::ops;

#[test]
fn snapshot_returns_state_without_the_raw_transcript() {
    let dir = tmpdir();
    let endpoint_id = EndpointId::random();
    let epoch = Uuid::from_u128(7);
    let body = transcript();
    let path = socket(dir.path(), &endpoint_id);
    let server = spawn_server(&path, move |reader, writer| {
        greet(reader, writer, cursor(epoch), body, Some("pane-1"))
    });

    let result = ops::snapshot(dir.path(), &endpoint_id, &fast()).unwrap();
    server.join().unwrap();

    assert_eq!(result.endpoint_id, endpoint_id.to_string());
    assert_eq!(result.pane.as_deref(), Some("pane-1"));
    assert_eq!(result.agent, "Claude");
    assert_eq!(result.version, VERSION);
    assert_eq!(result.cursor, cursor(epoch));
    assert_eq!(result.status, Status::Idle);
    assert!(!result.read_only);
    assert!(!result.auto_accept);
    assert_eq!(result.permissions.len(), 1);
    assert_eq!(result.permissions[0].permission.id, PermissionId(7));
    assert_eq!(
        result.permissions[0].tool.as_ref().unwrap().title,
        "cargo test"
    );
    assert_eq!(result.plan.len(), 1);
    assert_eq!(result.queued, 0);
    assert_eq!(result.turn, Some(Turn { started_ms: 100 }));
    assert_eq!(result.last_turn.as_ref().unwrap().duration_ms, 1200);
    assert_eq!(result.usage.as_ref().unwrap().used, 1_000);

    let json = serde_json::to_value(&result).unwrap();
    assert!(json.get("entries").is_none());
    assert!(json.get("commands").is_none());
    assert!(json.get("queued_prompts").is_none());
    assert_eq!(json["permissions"][0]["options"][0]["kind"], "allow_always");
    assert_eq!(json["permissions"][0]["tool"]["title"], "cargo test");
    assert_eq!(json["cursor"]["seq"], 12);
}
