//! The one JSON line written to stdout.

use std::io::Write;

use serde::Serialize;

use crate::{
    error::Error,
    list::ListResult,
    ops::{AnswerResult, PromptResult, SnapshotResult},
};

#[derive(Serialize)]
#[serde(untagged)]
pub(crate) enum Response {
    Ok { ok: bool, result: Body },
    Error { ok: bool, error: ErrorBody },
}

#[derive(Serialize)]
#[serde(untagged)]
pub(crate) enum Body {
    List(ListResult),
    Snapshot(Box<SnapshotResult>),
    Prompt(PromptResult),
    Answer(AnswerResult),
}

#[derive(Serialize)]
pub(crate) struct ErrorBody {
    code: String,
    message: String,
}

impl Response {
    pub(crate) fn success(result: Body) -> Self {
        Self::Ok { ok: true, result }
    }

    pub(crate) fn failure(error: &Error) -> Self {
        Self::Error {
            ok: false,
            error: ErrorBody {
                code: error.code().to_owned(),
                message: error.to_string(),
            },
        }
    }
}

pub(crate) fn write(response: &Response) -> std::io::Result<()> {
    let mut bytes = serde_json::to_vec(response).map_err(std::io::Error::other)?;
    bytes.push(b'\n');
    let mut stdout = std::io::stdout().lock();
    stdout.write_all(&bytes)?;
    stdout.flush()
}
