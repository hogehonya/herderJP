# The log window: the app's own log and, when automations run, each host's
# automation daemon log. Log records themselves are never translated.

log-window-title = ログ
log-window-search-placeholder = 検索、namespace:herdr_gpui target:terminal_painter
log-window-minimum = 最小: { $level } v
log-window-minimum-menu = 最小レベル
log-window-pause = 一時停止
log-window-resume = 追尾を再開
log-window-copy = コピー
log-window-working = 処理中...
log-window-export = エクスポート...
log-window-entries = ログエントリ
log-window-empty = 一致するログはありません。
log-window-saved = { $path } に保存しました。共有前に確認してください。
log-window-not-saved = 保存されていません: 状態ディレクトリがありません。共有前に確認してください。
log-window-choose-destination = エクスポート先を選択...
log-window-preparing-clipboard = クリップボードを準備中...
log-window-export-cancelled = エクスポートがキャンセルされました。
log-window-no-save-dialog = 保存ダイアログを開けません。
log-window-copied = フィルタ済みログをコピーしました。共有前に確認してください。
log-window-exported = フィルタ済みログをエクスポートしました。共有前に確認してください。
log-window-export-failed = エクスポートに失敗しました: { $error }
log-window-unreadable = ログを読み取れません: { $error }
log-window-source = ソース
log-window-source-app = アプリ
log-window-source-automations = { $host } の自動化
log-window-reading = 読み取り中…
log-window-automations-off = { $source } · 自動化がオフの間は読み取られません
log-window-log-tail = { $source } · より長いログの末尾
log-window-log-whole = { $source } · ログ全体
log-window-host-unreadable = { $host } を読み取れません: { $error }
log-window-summary-live = { $shown } 件表示 | { $dropped } 件破棄 | LIVE | { $status }
log-window-summary-paused = { $shown } 件表示 | { $dropped } 件破棄 | PAUSED | { $status }
