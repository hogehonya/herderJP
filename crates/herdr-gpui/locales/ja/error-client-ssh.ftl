# Failures reaching a host over SSH. The "bridge" is the SSH connection
# that carries the app's traffic to Herdr on the host.

error-client-ssh-cancelled = SSH 接続がキャンセルされました
error-client-ssh-closed = SSH ブリッジが閉じました。ホストの信頼、認証、リモートの Herdr インストールを確認してください
error-client-ssh-invalid-target = 無効な SSH ターゲットです（オプション、制御文字、パスワードは禁止されています）
error-client-ssh-known-hosts-unavailable = SSH にはホストキーを保存するユーザー known_hosts ファイルがありません
error-client-ssh-output-limit = SSH 起動出力が上限を超えています
error-client-ssh-refused = SSH ブリッジが閉じました: { $error }
error-client-ssh-timeout = SSH 検出がタイムアウトしました
error-client-ssh-unsupported = SSH ポート転送はこのプラットフォームではサポートされていません

error-client-ssh-failure-auth = 認証に失敗しました。エージェントにキーを読み込むか、ターミナルで ControlMaster 接続を開いてください
error-client-ssh-failure-herdr-missing = ホストに Herdr がインストールされていません
error-client-ssh-failure-host-key = ホストキーが信頼されていません。ターミナルでホストに ssh して確認してください
error-client-ssh-failure-local-network-denied = macOS が Herdr のローカルネットワークアクセスを拒否しました。たった今確認された場合は許可して再試行してください。そうでなければシステム設定 › プライバシーとセキュリティ › ローカルネットワークで Herdr をオンにしてください
error-client-ssh-failure-no-route = ホストへのルートがありません
error-client-ssh-failure-other = ホストの信頼、認証、リモートの Herdr インストールを確認してください
error-client-ssh-failure-unreachable = ホストに到達できません
