# Remote control's failures, shown in Settings > Remote and the pairing
# dialog. remote.port, remote.certificate, and remote.device_idle_days are
# config keys; herdr-remote-control is a program name.

error-remote-control-certificate-path = remote.certificate { $key } は絶対 UTF-8 パスである必要があります
error-remote-control-idle-days = remote.device_idle_days は 0（なし）～365 の範囲である必要があります
error-remote-control-io = { $operation ->
    [create] { $path } を作成できませんでした
    [write] { $path } を書き込めませんでした
   *[remove] { $path } を削除できませんでした
}
error-remote-control-no-state-dir = Herdr UI にリモート操作用の状態ディレクトリがありません
error-remote-control-pairing-address = 選択したペアリングアドレスはこのコンピューターから提供されていません
error-remote-control-pairing-url = デーモンが無効なペアリング URL を提供しました
error-remote-control-path-text = { $path } はサービス定義に含められません
error-remote-control-port = remote.port は 1～65535 の範囲である必要があります
error-remote-control-program-missing = Herdr UI の隣または PATH に herdr-remote-control が見つかりませんでした
error-remote-control-qr = ペアリングリンクが QR コードに収まりません
error-remote-control-service = { $program } が失敗しました（{ $status }）: { $stderr }
error-remote-control-spawn = { $program } を実行できませんでした
error-remote-control-unexpected = リモート操作デーモンが誤った種類の回答を返しました
error-remote-control-unknown-user = Windows が現在のユーザーを通知しませんでした
error-remote-control-unsupported = リモート操作はこのプラットフォームではサービスとして実行できません
error-remote-control-connect = リモート操作デーモンに到達できませんでした
error-remote-control-daemon = リモート操作デーモンが拒否しました: { $message }
error-remote-control-no-answer = リモート操作デーモンが応答せずに接続を閉じました

error-remote-control-enroll-apns-size = 送信した APNs ファイルが大きすぎます
error-remote-control-enroll-config = { $path } は有効な TOML ではありません
error-remote-control-enroll-no-home = このホストにはホームディレクトリがありません
error-remote-control-enroll-not-started = このホストのリモート操作デーモンが起動しませんでした
error-remote-control-enroll-outdated = このホストのリモート操作デーモンは Herdr UI より古いです。更新してください
error-remote-control-enroll-unexpected = リモート操作デーモンが誤った種類の回答を返しました
