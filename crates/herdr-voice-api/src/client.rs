//! The attach connection: one greeting, one snapshot, then one command.

use std::{
    io::BufReader,
    os::unix::net::UnixStream,
    path::Path,
    time::{Duration, Instant},
};

use herdr_chat_protocol::{
    ClientKind, ClientMessage, Command, CommandId, Cursor, EndpointId, REVISION, ServerMessage,
    Transcript, VERSION, read_frame, write_frame,
};

use crate::{endpoint, error::{Error, Result, from_rejection}};

/// Frames read for one greeting or one acknowledgement. Change frames may
/// arrive before the frame we wait for; this bounds a peer that only sends
/// changes.
const MAX_MESSAGES: usize = 256;

/// Bounds for one request. The total deadline also stops a peer that drips one
/// byte per read timeout.
pub(crate) struct Timeouts {
    pub(crate) connect: Duration,
    pub(crate) io: Duration,
    pub(crate) total: Duration,
}

impl Default for Timeouts {
    fn default() -> Self {
        Self {
            connect: Duration::from_secs(3),
            io: Duration::from_secs(10),
            total: Duration::from_secs(20),
        }
    }
}

pub(crate) struct WelcomeInfo {
    pub(crate) agent: String,
    pub(crate) pane: Option<String>,
    pub(crate) version: u32,
}

/// A fresh snapshot and the connection that produced it, so a command can be
/// sent to the same chat session.
pub(crate) struct Attached {
    pub(crate) conn: Connection,
    pub(crate) cursor: Cursor,
    pub(crate) transcript: Transcript,
    pub(crate) welcome: WelcomeInfo,
}

impl Attached {
    pub(crate) fn attach(dir: &Path, endpoint_id: &EndpointId, timeouts: &Timeouts) -> Result<Self> {
        let path = endpoint::path(dir, endpoint_id);
        endpoint::validate(&path, endpoint_id, endpoint::current_uid())?;
        let stream = endpoint::connect(&path, endpoint_id, timeouts.connect)?;
        stream
            .set_read_timeout(Some(timeouts.io))
            .map_err(|source| Error::Socket {
                endpoint_id: endpoint_id.clone(),
                source,
            })?;
        stream
            .set_write_timeout(Some(timeouts.io))
            .map_err(|source| Error::Socket {
                endpoint_id: endpoint_id.clone(),
                source,
            })?;
        let reader = stream.try_clone().map_err(|source| Error::Socket {
            endpoint_id: endpoint_id.clone(),
            source,
        })?;
        let deadline = Instant::now()
            .checked_add(timeouts.total)
            .ok_or(Error::Timeout { endpoint_id: endpoint_id.clone() })?;
        let mut conn = Connection {
            endpoint_id: endpoint_id.clone(),
            deadline,
            io: timeouts.io,
            reader: BufReader::new(reader),
            writer: stream,
        };
        conn.write(&ClientMessage::Hello {
            client: ClientKind::Cli,
            revision: REVISION,
            since: None,
            version: VERSION,
        })?;

        let mut welcome = None;
        for _ in 0..MAX_MESSAGES {
            match conn.read()? {
                Some(ServerMessage::Welcome {
                    agent,
                    pane,
                    version,
                }) => {
                    if welcome.is_some() {
                        return Err(Error::UnexpectedMessage);
                    }
                    if version != VERSION {
                        return Err(Error::VersionMismatch { got: version, supported: VERSION });
                    }
                    welcome = Some(WelcomeInfo { agent, pane, version });
                }
                Some(ServerMessage::Snapshot { cursor, transcript }) => {
                    let welcome = welcome.take().ok_or(Error::UnexpectedMessage)?;
                    return Ok(Self {
                        conn,
                        cursor,
                        transcript: *transcript,
                        welcome,
                    });
                }
                // A change before the snapshot is not useful; keep waiting
                // for the snapshot and let the message bound stop a flood.
                Some(ServerMessage::Change { .. }) => {}
                Some(ServerMessage::Ack { .. }) => return Err(Error::UnexpectedMessage),
                Some(ServerMessage::Bye { .. }) => return Err(Error::ConnectionClosed),
                None => return Err(Error::ConnectionClosed),
            }
        }
        Err(Error::TooManyMessages)
    }
}

pub(crate) struct Connection {
    deadline: Instant,
    endpoint_id: EndpointId,
    io: Duration,
    reader: BufReader<UnixStream>,
    writer: UnixStream,
}

impl Connection {
    /// Sends one command and waits for its matching Ack. Changes that arrive
    /// first are read and skipped; acceptance by the chat is not completion by
    /// the agent.
    pub(crate) fn command(&mut self, id: CommandId, command: Command) -> Result<()> {
        self.write(&ClientMessage::Command { command, id })?;
        for _ in 0..MAX_MESSAGES {
            match self.read()? {
                Some(ServerMessage::Ack {
                    id: acknowledged,
                    rejected,
                }) if acknowledged == id => {
                    return match rejected {
                        Some(reason) => Err(from_rejection(reason)),
                        None => Ok(()),
                    };
                }
                Some(ServerMessage::Change { .. }) => {}
                Some(
                    ServerMessage::Ack { .. }
                    | ServerMessage::Snapshot { .. }
                    | ServerMessage::Welcome { .. },
                ) => {}
                Some(ServerMessage::Bye { .. }) => return Err(Error::ConnectionClosed),
                None => return Err(Error::ConnectionClosed),
            }
        }
        Err(Error::TooManyMessages)
    }

    fn read(&mut self) -> Result<Option<ServerMessage>> {
        let timeout = self.next_timeout()?;
        self.reader
            .get_ref()
            .set_read_timeout(Some(timeout))
            .map_err(|source| Error::Socket {
                endpoint_id: self.endpoint_id.clone(),
                source,
            })?;
        match read_frame::<_, ServerMessage>(&mut self.reader) {
            Ok(message) => Ok(message),
            Err(herdr_chat_protocol::Error::Io(error)) if is_timeout(&error) => {
                Err(self.timed_out())
            }
            Err(error) => Err(Error::Frame(error)),
        }
    }

    fn write(&mut self, message: &ClientMessage) -> Result<()> {
        let timeout = self.next_timeout()?;
        self.writer
            .set_write_timeout(Some(timeout))
            .map_err(|source| Error::Socket {
                endpoint_id: self.endpoint_id.clone(),
                source,
            })?;
        match write_frame(&mut self.writer, message) {
            Ok(()) => Ok(()),
            Err(herdr_chat_protocol::Error::Io(error)) if is_timeout(&error) => {
                Err(self.timed_out())
            }
            Err(error) => Err(Error::Frame(error)),
        }
    }

    fn next_timeout(&self) -> Result<Duration> {
        let remaining = self.deadline.saturating_duration_since(Instant::now());
        if remaining.is_zero() {
            return Err(self.timed_out());
        }
        Ok(remaining.min(self.io))
    }

    fn timed_out(&self) -> Error {
        Error::Timeout {
            endpoint_id: self.endpoint_id.clone(),
        }
    }
}

fn is_timeout(error: &std::io::Error) -> bool {
    matches!(
        error.kind(),
        std::io::ErrorKind::TimedOut | std::io::ErrorKind::WouldBlock
    )
}
