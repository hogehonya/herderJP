# Failures reaching a Herdr daemon (the "Herdr server") on this computer,
# over SSH, or in WSL, and talking to it once connected. Most are shown in
# a connection notice or inside another message's $error. An "endpoint" is
# the daemon's connection protocol; a "surface" is a pane's screen contents;
# a "boot" is one run of the daemon. $error is the failure underneath, as
# the system or a parser words it. $status is how a process exited, in the
# system's words. `herdr update` is a command and stays as it is.

error-client-bridge-incompatible = { $fix ->
    [app] このホストの Herdr はこのアプリに対応できません。Herdr UI を更新してください
   *[daemon] このホストの Herdr はこのアプリに対応できません。`herdr update` を実行して再接続してください
}
error-client-bridge-incompatible-version = { $fix ->
    [app] このホストの Herdr（バージョン { $version }）はこのアプリに対応できません。Herdr UI を更新してください
   *[daemon] このホストの Herdr（バージョン { $version }）はこのアプリに対応できません。`herdr update` を実行して再接続してください
}
error-client-cancelled = クライアントが停止しました
error-client-catalog-limit = エンドポイントカタログが保存上限を超えています
error-client-catalog-not-file = エンドポイントカタログが通常ファイルではありません
error-client-catalog-schema = 無効なエンドポイントカタログスキーマです
error-client-catalog-version-or-count = サポートされていないカタログバージョン、またはプロファイルが多すぎます
error-client-closed-before-welcome = Herdr サーバーが応答せずに接続を閉じました。このアプリが必要とする { $version } より古い可能性があります。`herdr update` を実行して再接続してください
error-client-command-boot = コマンドが準備済みスナップショットのブートと一致しません
error-client-disconnected = クライアントが切断されています
error-client-empty-surface = サーフェスの寸法はゼロ以外である必要があります
error-client-encoded-surface-before-baseline = ベースラインより前にエンコードされたサーフェスです
error-client-endpoint-generation = { $fix ->
    [app] Herdr サーバー { $server_version } はエンドポイント世代 { $generation } を使用していますが、このアプリは { $ours } を使用しています。Herdr UI を更新してください
   *[daemon] Herdr サーバー { $server_version } はエンドポイント世代 { $generation } を使用していますが、このアプリは { $ours } を使用しています。`herdr update` を実行して再接続してください
}
error-client-event-receiver-dropped = イベントレシーバーがドロップされました
error-client-expected-welcome = 安定したエンドポイントのウェルカムを期待していました
error-client-forward-control = ポート転送のプライベート制御ディレクトリを作成できませんでした
error-client-forward-exit = SSH ポート転送が終了しました（{ $status }）。ホストの信頼、認証、ネットワークを確認してください
error-client-forward-local-port = 転送に使用できる空きローカルポートがありません
error-client-forward-refused = SSH がローカルポートでリッスンできませんでした（{ $status }）
error-client-forward-spawn = ポート転送用の SSH を開始できませんでした
error-client-forward-timeout = SSH が時間内に接続しませんでした。ホストの信頼と認証を確認してください
error-client-frame-length = 無効なフレーム長です
error-client-frame-prefix = 無効なフレームプレフィックスです
error-client-full = クライアントコマンドキューがいっぱいです
error-client-geometry-limit = サーフェスジオメトリがエンドポイントの上限を超えています
error-client-handshake-timeout = ハンドシェイク/スナップショットがタイムアウトしました
error-client-health-timeout = エンドポイントのヘルスチェックがタイムアウトしました
error-client-incompatible-codecs = 互換性のないエンドポイント世代/コーデックです
error-client-input-write-timeout = ターミナル入力の書き込みがタイムアウトしました。再接続が必要です
error-client-invalid-git-dir = リモートリポジトリディレクトリは絶対パスである必要があります
error-client-invalid-session = 無効なセッション名です
error-client-io = クライアント I/O に失敗しました: { $error }
error-client-json = 無効なエンドポイント JSON です: { $error }
error-client-legacy-daemon = この Herdr サーバーはエンドポイントプロトコルより前のものです。`herdr update` を実行して再接続してください
error-client-missing-boot-id = 無効なクライアントコマンドです。スナップショットのブート ID が必要です
error-client-missing-health-check = この SSH ホストの Herdr サーバー { $server_version } には health_check 機能がありません。そこで `herdr update` を実行して再接続してください
error-client-missing-surface-interest = Herdr サーバー { $server_version } には安全なサーフェス関心のサポートがありません。`herdr update` を実行して再接続してください
error-client-no-local-socket = リモートエンドポイントにはローカルソケットパスがありません
error-client-partial-frame-timeout = 部分フレームがタイムアウトしました
error-client-patch-before-baseline = ベースラインより前のパッチです
error-client-profile-id = 無効または重複したエンドポイントプロファイル ID です
error-client-profile-label = 無効なエンドポイントラベルです
error-client-remote-command = リモートコマンドが失敗しました（{ $status }）
error-client-remote-output = リモートコマンドが予期しない出力を返しました
error-client-request-timeout = エンドポイントリクエストがタイムアウトしました。再送信されていません
error-client-response-boot = 応答のブートが一致しません
error-client-response-id = 応答 ID が一致しません
error-client-response-limit = 応答の上限を超えています
error-client-response-missing-result = エンドポイントの応答に結果もエラーも含まれていません
error-client-response-schema = 無効なエンドポイント応答です
error-client-response-type = エンドポイントが別のメソッドの結果で応答しました
error-client-script-cancelled = ホストスクリプトがキャンセルされました
error-client-script-connect = スクリプト用のホストに到達できませんでした: { $error }
error-client-script-exit = ホストスクリプトが失敗しました（{ $status }）: { $stderr }
error-client-script-input = ホストスクリプトの入力を読み取れませんでした
error-client-script-io = ホストスクリプトの I/O に失敗しました
error-client-script-output = ホストスクリプトの出力を書き込めませんでした
error-client-script-output-limit = ホストスクリプトの出力が上限を超えています
error-client-script-spawn = ホストスクリプトを開始できませんでした
error-client-script-timeout = ホストスクリプトが期限までに進捗しませんでした
error-client-script-unsupported = ホストスクリプトには Linux または macOS のクライアントが必要です
error-client-script-worker = ホストスクリプトワーカーがパニックしました
error-client-selection-limit = エンドポイント選択が保存上限を超えています
error-client-selection-not-file = エンドポイント選択が通常ファイルではありません
error-client-selection-schema = 無効なエンドポイント選択スキーマです
error-client-selection-unavailable = 選択したエンドポイントが存在しないか無効です
error-client-selection-version = サポートされていないエンドポイント選択バージョンです
error-client-snapshot-identity = エンドポイントのブートが変更されたか、スナップショットリビジョンが後退しました。再接続が必要です
error-client-socket-closed = ソケットが閉じられました
error-client-storage-destination-not-file = 保存先が通常ファイルではありません
error-client-storage-path = 無効な保存パスです
error-client-surface-before-snapshot = スナップショットより前のサーフェスです
error-client-surface-encoding-not-negotiated = サーフェスエンコーディングがエンドポイントで通知されていません
error-client-surface-identity = 無効なサーフェス ID/リビジョンです
error-client-unsolicited-response = 要求されていない応答です
error-client-unsupported-method = メソッドがエンドポイントで通知されていません
error-client-unsupported-surface-interest = サーフェス関心機能がエンドポイントで通知されていません
error-client-upload-cancelled = SSH ファイル転送がキャンセルされました
error-client-upload-cleanup = { $error }。リモートの一時ファイルのクリーンアップにも失敗しました
error-client-upload-cleanup-path = クリーンアップには upload_files が返した未変更の絶対パスが必要です
error-client-upload-exit = SSH ファイル転送が失敗しました。ホストの信頼、認証、リモートストレージを確認してください
error-client-upload-io = SSH ファイル転送の I/O に失敗しました
error-client-upload-name = ファイル転送には制御文字を含まない UTF-8 のベース名が必要です
error-client-upload-not-file = ファイル転送のソースが通常ファイルではありません
error-client-upload-path-limit = SSH ファイル転送は最大 256 個のパスを受け取ります
error-client-upload-response = 無効または過剰な SSH ファイル転送応答です
error-client-upload-size-overflow = ファイル転送の合計サイズが u64 を超えています
error-client-upload-source-changed = ファイル転送のソースの長さが変更されました
error-client-upload-timeout = SSH ファイル転送が 30 秒間進捗しませんでした
error-client-upload-unsupported = SSH ファイル転送には Linux または macOS のクライアントが必要です
error-client-welcome-kind = endpoint.welcome.v1 を期待していました
error-client-welcome-rejected = { $code }: { $message }
