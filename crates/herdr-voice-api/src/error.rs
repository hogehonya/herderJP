//! Failures the Voice API reports, each with a stable code and a Japanese
//! message for the bridge.

use std::io;

use herdr_chat_protocol::{EndpointId, Rejection};

pub type Result<T, E = Error> = std::result::Result<T, E>;

#[derive(Debug, thiserror::Error)]
pub enum Error {
    #[error("標準入力の要求が空です")]
    EmptyRequest,
    #[error("標準入力の要求は 1 MiB 以下にしてください")]
    RequestTooLarge,
    #[error("標準入力を読み取れませんでした")]
    RequestRead(#[source] io::Error),
    #[error("要求が JSON として正しくありません")]
    RequestJson(#[from] serde_json::Error),
    #[error("Herdr のチャット保存先が見つかりません")]
    NoEndpointDir,
    #[error("チャット保存先を読み取れませんでした")]
    EndpointDir(#[source] io::Error),
    #[error("エンドポイントIDは32桁の小文字16進数です")]
    InvalidEndpointId,
    #[error("エンドポイント {endpoint_id} は存在しません")]
    EndpointNotFound { endpoint_id: EndpointId },
    #[error("エンドポイント {endpoint_id} の情報を読み取れませんでした")]
    EndpointMetadata {
        endpoint_id: EndpointId,
        #[source]
        source: io::Error,
    },
    #[error("エンドポイント {endpoint_id} はシンボリックリンクです")]
    SymlinkEndpoint { endpoint_id: EndpointId },
    #[error("エンドポイント {endpoint_id} はソケットではありません")]
    NotSocket { endpoint_id: EndpointId },
    #[error("エンドポイント {endpoint_id} は現在のユーザーのものではありません")]
    NotOwner { endpoint_id: EndpointId },
    #[error("エンドポイント {endpoint_id} に接続できませんでした")]
    Connect {
        endpoint_id: EndpointId,
        #[source]
        source: io::Error,
    },
    #[error("エンドポイント {endpoint_id} との通信がタイムアウトしました")]
    Timeout { endpoint_id: EndpointId },
    #[error("エンドポイント {endpoint_id} の通信を設定できませんでした")]
    Socket {
        endpoint_id: EndpointId,
        #[source]
        source: io::Error,
    },
    #[error("チャットのフレームが正しくありません")]
    Frame(#[from] herdr_chat_protocol::Error),
    #[error("チャットから想定外の応答がありました")]
    UnexpectedMessage,
    #[error("チャットが接続を閉じました")]
    ConnectionClosed,
    #[error("チャットがプロトコル {got} を使っています（対応: {supported}）")]
    VersionMismatch { got: u32, supported: u32 },
    #[error("チャットの応答が多すぎます")]
    TooManyMessages,
    #[error("要求の epoch が現在のセッションと一致しません")]
    EpochMismatch { endpoint_id: EndpointId },
    #[error("エージェントはこの操作を受け付けられない状態です")]
    NotReady,
    #[error("このチャットは読み取り専用です")]
    ReadOnly,
    #[error("プロンプトが空です")]
    PromptEmpty,
    #[error("プロンプトが長すぎます")]
    PromptTooLong,
    #[error("承認要求 {permission_id} は現在ありません")]
    UnknownPermission { permission_id: u64 },
    #[error("その承認要求には対応する選択肢がありません")]
    NoMatchingOption,
    #[error("{message}")]
    Rejected {
        code: &'static str,
        message: &'static str,
    },
}

impl Error {
    /// The stable code a machine reads instead of the Japanese message.
    pub(crate) fn code(&self) -> &'static str {
        match self {
            Self::EmptyRequest => "empty_request",
            Self::RequestTooLarge => "request_too_large",
            Self::RequestRead(_) => "stdin_failed",
            Self::RequestJson(_) => "invalid_request",
            Self::NoEndpointDir => "no_endpoint_dir",
            Self::EndpointDir(_) => "endpoint_dir_failed",
            Self::InvalidEndpointId => "invalid_endpoint_id",
            Self::EndpointNotFound { .. } => "endpoint_not_found",
            Self::EndpointMetadata { .. } => "endpoint_metadata_failed",
            Self::SymlinkEndpoint { .. } => "symlink_endpoint",
            Self::NotSocket { .. } => "not_socket",
            Self::NotOwner { .. } => "not_owner",
            Self::Connect { .. } => "connect_failed",
            Self::Timeout { .. } => "timeout",
            Self::Socket { .. } => "socket_failed",
            Self::Frame(_) | Self::UnexpectedMessage | Self::TooManyMessages => "protocol_error",
            Self::ConnectionClosed => "connection_closed",
            Self::VersionMismatch { .. } => "protocol_version",
            Self::EpochMismatch { .. } => "epoch_mismatch",
            Self::NotReady => "not_ready",
            Self::ReadOnly => "read_only",
            Self::PromptEmpty => "prompt_empty",
            Self::PromptTooLong => "prompt_too_long",
            Self::UnknownPermission { .. } => "unknown_permission",
            Self::NoMatchingOption => "unknown_option",
            Self::Rejected { code, .. } => code,
        }
    }
}

/// The chat's rejection, as a Voice API failure.
pub(crate) fn from_rejection(reason: Rejection) -> Error {
    let (code, message) = match reason {
        Rejection::EmptyPrompt => ("prompt_empty", "プロンプトが空です"),
        Rejection::PromptTooLong => ("prompt_too_long", "プロンプトが長すぎます"),
        Rejection::NotReady => (
            "not_ready",
            "エージェントはまだプロンプトを受け付けられません",
        ),
        Rejection::NotWorking => ("not_working", "実行中のターンがありません"),
        Rejection::UnknownPermission => ("unknown_permission", "その承認要求は既に解決済みです"),
        Rejection::UnknownOption => ("unknown_option", "その選択肢は承認要求にありません"),
        Rejection::UnknownMode => ("unknown_mode", "そのモードはありません"),
        Rejection::UnknownSetting => ("unknown_setting", "その設定はありません"),
        Rejection::UnknownQueued => (
            "unknown_queued",
            "そのプロンプトは既に待ち行列から外れています",
        ),
        Rejection::AgentUnavailable => (
            "agent_unavailable",
            "エージェントにコマンドを届けられませんでした",
        ),
        Rejection::TooManyAttachments => ("too_many_attachments", "添付ファイルが多すぎます"),
        Rejection::QueueFull => ("queue_full", "待機中のプロンプトが上限に達しています"),
        Rejection::UnknownFile => ("unknown_file", "添付ファイルを読み取れません"),
        Rejection::Unsupported => (
            "unsupported",
            "このチャットプログラムはこのコマンドに対応していません",
        ),
        Rejection::Other => ("rejected", "チャットがコマンドを拒否しました"),
    };
    Error::Rejected { code, message }
}
