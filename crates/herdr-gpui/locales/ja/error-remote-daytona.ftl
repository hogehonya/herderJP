# Daytona sandboxes as cloud devices. $detail is Daytona's own text, kept as
# it is. [daytona] is the config table; api_url is its key.

error-remote-daytona-url = { $field } は認証情報、クエリ、フラグメントを含まない https（ループバックのみ http）である必要があります。
error-remote-daytona-missing-key = Daytona には API キーが必要です。設定 > クラウドデバイスで保存してください。
error-remote-daytona-authentication = Daytona が API キーを拒否しました。
error-remote-daytona-forbidden = Daytona がアクセスを拒否しました。API キーの権限を確認してください。
error-remote-daytona-status = Daytona リクエストが失敗しました（HTTP { $code }）
error-remote-daytona-status-message = Daytona リクエストが失敗しました（HTTP { $code }）: { $detail }
error-remote-daytona-network = Daytona ネットワークリクエストが失敗またはタイムアウトしました。
error-remote-daytona-read = Daytona 応答をサイズ/時間制限内に読み取れませんでした。
error-remote-daytona-size = Daytona 応答がサイズ上限を超えました。
error-remote-daytona-json = 無効な Daytona JSON 応答です。
error-remote-daytona-header = 無効な Daytona 認可ヘッダーです。
error-remote-daytona-sandbox = Daytona サンドボックスに失敗しました: { $detail }
error-remote-daytona-deleted = Daytona サンドボックスは削除されました。
error-remote-daytona-snapshot = Daytona がスナップショットをビルドできませんでした: { $detail }
error-remote-daytona-start-timeout = Daytona サンドボックスが 10 分以内に起動しませんでした。
error-remote-daytona-cancelled = キャンセルされました。
error-remote-daytona-gateway = Daytona がこのアプリで理解できない SSH コマンドを返しました。
error-remote-daytona-ssh-missing = Daytona デバイスには PATH 上の ssh が必要です。実行できませんでした。
error-remote-daytona-gateway-file = Daytona ゲートウェイ用の SSH コマンドを準備できませんでした。
error-remote-daytona-account = このデバイスは [daytona] api_url で設定されなくなった Daytona アカウントに属しています。
