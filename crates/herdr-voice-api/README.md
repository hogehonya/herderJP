# herdr-voice-api

A small, GUI-free bridge between Herdr Voice Bridge and an `herdr-acp` chat.
The bridge writes one JSON request to stdin and reads one JSON response from
stdout. The process does not read a request path from its input, does not run a
shell, and never sends keys to a terminal.

## Targets

This API talks to the chat program `herdr-acp`, which runs an ACP agent inside
a Herdr pane. It is not a way to prompt a plain terminal Codex, Claude, or any
other program that does not expose the Herdr chat attach endpoint.

## Invocation

```sh
printf '%s\n' '{"op":"list"}' | herdr-voice-api
```

Unix only. One process handles one request; a bridge that needs several
answers starts one process per request.

## Requests

All requests are one JSON object. `endpoint_id` is the 32 lowercase
hexadecimal id from `list` or from the pane's `acp` metadata token. The API
never accepts an arbitrary socket path.

```json
{"op":"list"}
```

```json
{"op":"snapshot","endpoint_id":"<endpoint-id-from-list>"}
```

```json
{
  "op": "prompt",
  "endpoint_id": "<endpoint-id-from-list>",
  "epoch": "6f1c1c5e-3c1a-4f6e-9d0e-0d6f6b2c1a11",
  "text": "Run the test suite and summarize failures.",
  "command_id": "3f2b1a09-8c7d-4e6f-9a1b-2c3d4e5f6a7b"
}
```

```json
{
  "op": "answer",
  "endpoint_id": "<endpoint-id-from-list>",
  "epoch": "6f1c1c5e-3c1a-4f6e-9d0e-0d6f6b2c1a11",
  "permission_id": 7,
  "decision": "approve",
  "command_id": "3f2b1a09-8c7d-4e6f-9a1b-2c3d4e5f6a7b"
}
```

`command_id` is optional; the API generates one when it is absent and always
returns the id it used. `epoch` comes from the `snapshot` result and prevents a
command from acting on a session that has since restarted.

## Responses

Success:

```json
{"ok":true,"result":{...}}
```

Failure:

```json
{"ok":false,"error":{"code":"epoch_mismatch","message":"要求の epoch が現在のセッションと一致しません"}}
```

Messages are Japanese; `code` is stable and intended for the bridge to branch
on.

### `list`

```json
{
  "ok": true,
  "result": {
    "endpoints": [{"endpoint_id": "<endpoint-id-from-list>"}],
    "errors": [
      {
        "endpoint_id": "<endpoint-id-from-list>",
        "code": "connect_failed",
        "message": "エンドポイント <endpoint-id-from-list> に接続できませんでした"
      }
    ],
    "truncated": false
  }
}
```

Only sockets in `herdr_chat_protocol::endpoint_dir` are considered, at most 64
are returned, and a socket must be a socket this user owns and not a symlink.
Stale or unreachable sockets appear in `errors`; listing does not remove them.
`truncated` is `false` only when every directory entry and candidate was
examined. It is `true` when listing stopped early because the 64-endpoint
limit was reached with candidates left, the total deadline expired, or more
than 1024 directory entries were present, so the list is incomplete.

### `snapshot`

The result is a bounded state summary, not the transcript:

```json
{
  "ok": true,
  "result": {
    "endpoint_id": "<endpoint-id-from-list>",
    "pane": "p_1",
    "agent": "Claude",
    "version": 1,
    "cursor": {"epoch": "6f1c1c5e-3c1a-4f6e-9d0e-0d6f6b2c1a11", "seq": 42},
    "status": {"state": "idle"},
    "read_only": false,
    "auto_accept": false,
    "permissions": [
      {
        "id": 7,
        "call_id": "call-1",
        "title": "Run cargo test?",
        "options": [
          {"id": "once", "name": "Allow once", "kind": "allow_once"},
          {"id": "reject", "name": "Reject", "kind": "reject_once"}
        ],
        "tool": {
          "call_id": "call-1",
          "title": "cargo test",
          "kind": "execute",
          "status": "in_progress",
          "locations": ["src/main.rs"]
        }
      }
    ],
    "plan": [],
    "queued": 0,
    "turn": null,
    "last_turn": {
      "duration_ms": 1200,
      "ended_ms": 1700000000000,
      "end": "done",
      "tokens": null
    },
    "usage": {"size": 200000, "used": 1000, "cost": null}
  }
}
```

Entry text, tool content, queued prompt text, commands, and the full transcript
are deliberately omitted.

### `prompt`

```json
{
  "ok": true,
  "result": {
    "accepted": true,
    "command_id": "3f2b1a09-8c7d-4e6f-9a1b-2c3d4e5f6a7b",
    "endpoint_id": "<endpoint-id-from-list>"
  }
}
```

`accepted` means the chat acknowledged the native `Prompt` command. It does
not mean the agent finished the turn. A rejected command is an error.

### `answer`

```json
{
  "ok": true,
  "result": {
    "accepted": true,
    "command_id": "3f2b1a09-8c7d-4e6f-9a1b-2c3d4e5f6a7b",
    "endpoint_id": "<endpoint-id-from-list>",
    "permission_id": 7,
    "decision": "approve",
    "option_kind": "allow_once"
  }
}
```

`approve` only ever selects `allow_once`; `deny` selects `reject_once`, then
`reject_always` when that is the only safe reject option. The API never accepts
an option string from the caller. A permission that is no longer pending is
rejected by the chat's own `UnknownPermission`.

## Bounds

- stdin: 1 MiB, one JSON object per process.
- endpoint directory: at most 1024 entries examined, at most 64 endpoints
  returned, and `truncated` set when either limit or the total deadline stops
  the survey before it is complete.
- connect: 3 seconds; each read and write: 10 seconds; one request: 20 seconds
  in total.
- frames: the chat protocol's `MAX_FRAME_SIZE`; at most 256 frames per
  greeting or acknowledgement.
- prompts: `MAX_PROMPT_SIZE` from the chat protocol.

The API does not retry a command, does not accept an arbitrary path, and does
not delete stale sockets.
