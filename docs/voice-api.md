# Voice Bridge chat API

`herdr-voice-api` is a small CLI that lets Herdr Voice Bridge put a prompt or a
permission decision into an `herdr-acp` chat. It reuses the chat attach wire in
`herdr-chat-protocol`, so it does not modify the Herdr daemon, does not use
terminal `send-keys`, and does not depend on the GUI.

## Limitation

The target is a Herdr pane running `herdr-acp`, which owns the ACP agent and
its conversation. This is not an API for a plain terminal Codex or other
program that does not publish an `acp` chat endpoint. Use `list` to find the
chat endpoints available to the current user.

## Protocol

The bridge writes one JSON object and a newline to stdin and reads one JSON
object and a newline from stdout:

```sh
printf '%s\n' '{"op":"list"}' | herdr-voice-api
```

One process handles one request. Responses are either:

```json
{"ok":true,"result":{...}}
```

or:

```json
{"ok":false,"error":{"code":"...","message":"..."}}
```

`code` is stable; `message` is Japanese.

### Requests

| Operation | Fields |
| --- | --- |
| `list` | none |
| `snapshot` | `endpoint_id` |
| `prompt` | `endpoint_id`, `epoch`, `text`, optional `command_id` |
| `answer` | `endpoint_id`, `epoch`, `permission_id`, `decision`, optional `command_id` |

`endpoint_id` is 32 lowercase hexadecimal digits. The API constructs the socket
path inside `herdr_chat_protocol::endpoint_dir`; input never names a path.

`epoch` is the UUID in the `snapshot` result's cursor. The API takes a fresh
snapshot for every `prompt` and `answer`, compares the epoch, and refuses before
writing when it changed.

`decision` is `approve` or `deny`. `command_id` is optional and defaults to a
new UUID; the result always returns the id that was sent.

### `list`

Returns at most 64 endpoints that are sockets owned by the current user and are
not symlinks. Unreachable endpoints, stale socket files, symlinks, and
non-sockets are reported in `errors` instead of being silently omitted. This
operation never removes a socket.

### `snapshot`

Returns `endpoint_id`, optional `pane`, `agent`, protocol `version`, `cursor`,
`status`, `read_only`, `auto_accept`, `permissions`, `plan`, `queued`, `turn`,
`last_turn`, and `usage`. A permission includes its existing options and a
small summary of the tool call it is about. Entry text, tool content, queued
prompt text, and other raw conversation data are not returned.

### `prompt`

Validates that the text is not empty, is at most `MAX_PROMPT_SIZE`, and that the
chat is not read-only and still accepts prompts. It then sends a native
`Prompt` command on the snapshot's connection and waits for the matching
`CommandId` acknowledgement. `accepted` means the chat accepted the command,
not that the agent finished. The API does not retry.

### `answer`

Finds `permission_id` in the fresh snapshot. `approve` requires an
`allow_once` option; `deny` prefers `reject_once` and otherwise uses
`reject_always`. The API never accepts a free-form option string, never uses
`allow_always`, and refuses when no fitting option exists. A decision that
races another client is rejected by the chat as `UnknownPermission`.

## Errors

Common codes include `invalid_request`, `invalid_endpoint_id`,
`endpoint_not_found`, `symlink_endpoint`, `not_owner`, `not_socket`,
`connect_failed`, `timeout`, `protocol_error`, `epoch_mismatch`, `not_ready`,
`read_only`, `prompt_empty`, `prompt_too_long`, `unknown_permission`,
`unknown_option`, and the chat's own `rejected` family (`not_working`,
`agent_unavailable`, `queue_full`, and others).

## Bounds

stdin is limited to 1 MiB. Connect is bounded to 3 seconds, each read and write
to 10 seconds, and a whole request to 20 seconds. Frames use the chat
protocol's `MAX_FRAME_SIZE`, and a greeting or acknowledgement reads at most
256 frames. `list` examines at most 1024 directory entries and returns at most
64 endpoints.
