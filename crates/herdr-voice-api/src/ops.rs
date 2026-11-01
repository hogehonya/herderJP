//! The three chat operations: snapshot, prompt, and answer.

use std::path::Path;

use herdr_chat_protocol::{
    Command, CommandId, Cursor, EndpointId, Entry, EntryKind, MAX_PROMPT_SIZE, Permission,
    PermissionId, PermissionKind, PermissionOption, PlanEntry, Status, ToolKind, ToolStatus,
    Transcript, Turn, TurnSummary, Usage,
};
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::{
    client::{Attached, Timeouts, WelcomeInfo},
    error::{Error, Result},
};

/// The most tool locations one permission carries into the summary.
const MAX_TOOL_LOCATIONS: usize = 16;

#[derive(Clone, Copy, Debug, Deserialize, Eq, PartialEq, Serialize)]
#[serde(rename_all = "snake_case")]
pub(crate) enum Decision {
    Approve,
    Deny,
}

#[derive(Debug, Serialize)]
pub(crate) struct SnapshotResult {
    pub(crate) agent: String,
    pub(crate) auto_accept: bool,
    pub(crate) cursor: Cursor,
    pub(crate) endpoint_id: String,
    pub(crate) last_turn: Option<TurnSummary>,
    pub(crate) pane: Option<String>,
    pub(crate) permissions: Vec<PermissionView>,
    pub(crate) plan: Vec<PlanEntry>,
    pub(crate) queued: usize,
    pub(crate) read_only: bool,
    pub(crate) status: Status,
    pub(crate) turn: Option<Turn>,
    pub(crate) usage: Option<Usage>,
    pub(crate) version: u32,
}

/// A pending permission and the tool call it is about, without the tool's
/// content or the rest of the transcript.
#[derive(Debug, Serialize)]
pub(crate) struct PermissionView {
    #[serde(flatten)]
    pub(crate) permission: Permission,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub(crate) tool: Option<ToolSummary>,
}

#[derive(Debug, Serialize)]
pub(crate) struct ToolSummary {
    pub(crate) call_id: String,
    pub(crate) kind: ToolKind,
    pub(crate) locations: Vec<String>,
    pub(crate) status: ToolStatus,
    pub(crate) title: String,
}

#[derive(Debug, Serialize)]
pub(crate) struct PromptResult {
    pub(crate) accepted: bool,
    pub(crate) command_id: CommandId,
    pub(crate) endpoint_id: String,
}

#[derive(Debug, Serialize)]
pub(crate) struct AnswerResult {
    pub(crate) accepted: bool,
    pub(crate) command_id: CommandId,
    pub(crate) decision: Decision,
    pub(crate) endpoint_id: String,
    pub(crate) option_kind: PermissionKind,
    pub(crate) permission_id: u64,
}

pub(crate) fn snapshot(
    dir: &Path,
    endpoint_id: &EndpointId,
    timeouts: &Timeouts,
) -> Result<SnapshotResult> {
    let attached = Attached::attach(dir, endpoint_id, timeouts)?;
    Ok(SnapshotResult::new(endpoint_id, attached))
}

pub(crate) fn prompt(
    dir: &Path,
    endpoint_id: &EndpointId,
    epoch: Uuid,
    text: &str,
    command_id: Option<CommandId>,
    timeouts: &Timeouts,
) -> Result<PromptResult> {
    if text.trim().is_empty() {
        return Err(Error::PromptEmpty);
    }
    if text.len() > MAX_PROMPT_SIZE {
        return Err(Error::PromptTooLong);
    }

    let mut attached = Attached::attach(dir, endpoint_id, timeouts)?;
    check_epoch(endpoint_id, attached.cursor.epoch, epoch)?;
    if attached.transcript.read_only {
        return Err(Error::ReadOnly);
    }
    if !attached.transcript.status.accepts_prompts() {
        return Err(Error::NotReady);
    }

    let command_id = command_id.unwrap_or_else(CommandId::random);
    let command = Command::Prompt {
        attachments: Vec::new(),
        text: text.to_owned(),
    };
    attached.conn.command(command_id, command)?;
    Ok(PromptResult {
        accepted: true,
        command_id,
        endpoint_id: endpoint_id.to_string(),
    })
}

pub(crate) fn answer(
    dir: &Path,
    endpoint_id: &EndpointId,
    epoch: Uuid,
    permission_id: u64,
    decision: Decision,
    command_id: Option<CommandId>,
    timeouts: &Timeouts,
) -> Result<AnswerResult> {
    let mut attached = Attached::attach(dir, endpoint_id, timeouts)?;
    check_epoch(endpoint_id, attached.cursor.epoch, epoch)?;
    if attached.transcript.read_only {
        return Err(Error::ReadOnly);
    }

    let permission_id = PermissionId(permission_id);
    let (option, kind) = {
        let permission = attached
            .transcript
            .permissions
            .iter()
            .find(|permission| permission.id == permission_id)
            .ok_or(Error::UnknownPermission {
                permission_id: permission_id.0,
            })?;
        let option = select_option(permission, decision).ok_or(Error::NoMatchingOption)?;
        (option.id.clone(), option.kind)
    };

    let command_id = command_id.unwrap_or_else(CommandId::random);
    let command = Command::Answer {
        option,
        permission: permission_id,
    };
    attached.conn.command(command_id, command)?;
    Ok(AnswerResult {
        accepted: true,
        command_id,
        decision,
        endpoint_id: endpoint_id.to_string(),
        option_kind: kind,
        permission_id: permission_id.0,
    })
}

/// The option the decision may use. Approving never accepts an
/// `allow_always`; denying prefers `reject_once`, then the other safe reject.
pub(crate) fn select_option(
    permission: &Permission,
    decision: Decision,
) -> Option<&PermissionOption> {
    let kinds: &[PermissionKind] = match decision {
        Decision::Approve => &[PermissionKind::AllowOnce],
        Decision::Deny => &[PermissionKind::RejectOnce, PermissionKind::RejectAlways],
    };
    kinds.iter().find_map(|kind| {
        permission
            .options
            .iter()
            .find(|option| option.kind == *kind)
    })
}

fn check_epoch(endpoint_id: &EndpointId, current: Uuid, requested: Uuid) -> Result<()> {
    if current == requested {
        return Ok(());
    }
    Err(Error::EpochMismatch {
        endpoint_id: endpoint_id.clone(),
    })
}

impl SnapshotResult {
    fn new(endpoint_id: &EndpointId, attached: Attached) -> Self {
        let Attached {
            welcome,
            cursor,
            transcript,
            ..
        } = attached;
        let WelcomeInfo {
            agent,
            pane,
            version,
        } = welcome;
        let Transcript {
            auto_accept,
            entries,
            plan,
            permissions: pending,
            queued,
            read_only,
            status,
            turn,
            usage,
            ..
        } = transcript;
        let permissions = pending
            .iter()
            .map(|permission| PermissionView {
                permission: permission.clone(),
                tool: tool_for(&entries, permission.call_id.as_deref()),
            })
            .collect();
        let last_turn = entries.iter().rev().find_map(|entry| match &entry.kind {
            EntryKind::Turn(summary) => Some(summary.clone()),
            _ => None,
        });
        Self {
            agent,
            auto_accept,
            cursor,
            endpoint_id: endpoint_id.to_string(),
            last_turn,
            pane,
            permissions,
            plan,
            queued: queued.len(),
            read_only,
            status,
            turn,
            usage,
            version,
        }
    }
}

fn tool_for(entries: &[Entry], call_id: Option<&str>) -> Option<ToolSummary> {
    let call_id = call_id?;
    entries.iter().rev().find_map(|entry| match &entry.kind {
        EntryKind::Tool(tool) if tool.call_id == call_id => Some(ToolSummary {
            call_id: tool.call_id.clone(),
            kind: tool.kind,
            locations: tool
                .locations
                .iter()
                .take(MAX_TOOL_LOCATIONS)
                .cloned()
                .collect(),
            status: tool.status,
            title: tool.title.clone(),
        }),
        _ => None,
    })
}
