#![allow(clippy::unwrap_used, clippy::expect_used)]

use std::{
    io::{BufReader, Write},
    os::unix::net::{UnixListener, UnixStream},
    path::{Path, PathBuf},
    thread::{self, JoinHandle},
    time::Duration,
};

use herdr_chat_protocol::{
    ClientKind, ClientMessage, Command, CommandId, Cursor, EndpointId, Entry, EntryId, EntryKind,
    Permission, PermissionId, PermissionKind, PermissionOption, PlanEntry, PlanPriority,
    PlanStatus, REVISION, ServerMessage, Status, Tool, ToolKind, ToolStatus, Transcript, Turn,
    TurnEnd, TurnSummary, Usage, VERSION, endpoint_path, read_frame, write_frame,
};
use tempfile::TempDir;
use uuid::Uuid;

use crate::client::Timeouts;

mod answer;
mod failures;
mod list;
mod prompt;
mod request;
mod snapshot;

const WAIT: Duration = Duration::from_secs(2);

fn fast() -> Timeouts {
    Timeouts {
        connect: Duration::from_secs(1),
        io: Duration::from_secs(2),
        total: Duration::from_secs(5),
    }
}

/// For the one test that expects a read timeout.
fn short() -> Timeouts {
    Timeouts {
        connect: Duration::from_millis(200),
        io: Duration::from_millis(50),
        total: Duration::from_millis(500),
    }
}

fn tmpdir() -> TempDir {
    tempfile::tempdir().unwrap()
}

fn socket(dir: &Path, endpoint_id: &EndpointId) -> PathBuf {
    endpoint_path(dir, endpoint_id)
}

fn cursor(epoch: Uuid) -> Cursor {
    Cursor { epoch, seq: 12 }
}

fn options() -> Vec<PermissionOption> {
    vec![
        PermissionOption {
            id: "always".to_owned(),
            kind: PermissionKind::AllowAlways,
            name: "Always".to_owned(),
        },
        PermissionOption {
            id: "once".to_owned(),
            kind: PermissionKind::AllowOnce,
            name: "Once".to_owned(),
        },
        PermissionOption {
            id: "reject".to_owned(),
            kind: PermissionKind::RejectOnce,
            name: "Reject".to_owned(),
        },
    ]
}

fn transcript() -> Transcript {
    transcript_with_options(options())
}

fn transcript_with_options(options: Vec<PermissionOption>) -> Transcript {
    let mut transcript = Transcript::new("Claude");
    transcript.status = Status::Idle;
    transcript.entries = vec![
        Entry {
            id: EntryId(1),
            kind: EntryKind::User {
                text: "run tests".to_owned(),
                files: 0,
            },
        },
        Entry {
            id: EntryId(2),
            kind: EntryKind::Tool(Tool {
                call_id: "call-1".to_owned(),
                content: Vec::new(),
                kind: ToolKind::Execute,
                locations: vec!["src/main.rs".to_owned()],
                parent: None,
                status: ToolStatus::InProgress,
                title: "cargo test".to_owned(),
            }),
        },
        Entry {
            id: EntryId(3),
            kind: EntryKind::Turn(TurnSummary {
                duration_ms: 1200,
                ended_ms: Some(1_700_000_000_000),
                end: TurnEnd::Done,
                tokens: None,
            }),
        },
    ];
    transcript.permissions = vec![Permission {
        call_id: Some("call-1".to_owned()),
        id: PermissionId(7),
        options,
        title: "Run tests?".to_owned(),
    }];
    transcript.plan = vec![PlanEntry {
        content: "Run the test suite".to_owned(),
        priority: PlanPriority::High,
        status: PlanStatus::InProgress,
    }];
    transcript.turn = Some(Turn { started_ms: 100 });
    transcript.usage = Some(Usage {
        cost: None,
        size: 200_000,
        used: 1_000,
    });
    transcript
}

fn spawn_server(
    path: &Path,
    run: impl FnOnce(&mut BufReader<UnixStream>, &mut UnixStream) -> herdr_chat_protocol::Result<()>
    + Send
    + 'static,
) -> JoinHandle<()> {
    let listener = UnixListener::bind(path).unwrap();
    thread::spawn(move || {
        let (stream, _) = listener.accept().unwrap();
        stream.set_read_timeout(Some(WAIT)).unwrap();
        stream.set_write_timeout(Some(WAIT)).unwrap();
        let mut reader = BufReader::new(stream.try_clone().unwrap());
        let mut writer = stream;
        if let Err(error) = run(&mut reader, &mut writer) {
            panic!("fake server failed: {error}");
        }
    })
}

fn greet(
    reader: &mut BufReader<UnixStream>,
    writer: &mut UnixStream,
    cursor: Cursor,
    transcript: Transcript,
    pane: Option<&str>,
) -> herdr_chat_protocol::Result<()> {
    let hello = read_frame::<_, ClientMessage>(reader)?;
    assert!(matches!(
        hello,
        Some(ClientMessage::Hello {
            client: ClientKind::Cli,
            revision: REVISION,
            since: None,
            version: VERSION,
        })
    ));
    let welcome = ServerMessage::Welcome {
        agent: transcript.agent.clone(),
        pane: pane.map(str::to_owned),
        version: VERSION,
    };
    write_frame(writer, &welcome)?;
    let snapshot = ServerMessage::Snapshot {
        cursor,
        transcript: Box::new(transcript),
    };
    write_frame(writer, &snapshot)
}

fn read_command(reader: &mut BufReader<UnixStream>) -> (CommandId, Command) {
    match read_frame::<_, ClientMessage>(reader).unwrap() {
        Some(ClientMessage::Command { command, id }) => (id, command),
        Some(other) => panic!("expected a command, got {other:?}"),
        None => panic!("connection closed before a command"),
    }
}

fn assert_no_command(reader: &mut BufReader<UnixStream>) {
    assert!(
        read_frame::<_, ClientMessage>(reader).unwrap().is_none(),
        "the client wrote a command when it should have refused"
    );
}

fn send_ack(
    writer: &mut UnixStream,
    id: CommandId,
    rejected: Option<herdr_chat_protocol::Rejection>,
) -> herdr_chat_protocol::Result<()> {
    write_frame(writer, &ServerMessage::Ack { id, rejected })
}

fn write_raw(writer: &mut UnixStream, bytes: &[u8]) -> std::io::Result<()> {
    writer.write_all(bytes)?;
    writer.flush()
}
