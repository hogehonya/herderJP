# Boat sandboxes as cloud devices. $detail is Boat's own text, kept as it
# is; $error is the failure underneath; $id is a sandbox's ID at Boat.

error-remote-boat-url = { $field } は認証情報、クエリ、フラグメントを含まない https（ループバックのみ http）である必要があります。
error-remote-boat-missing-key = Boat には API キーが必要です。設定 > クラウドデバイスで保存してください。
error-remote-boat-authentication = Boat が API キーを拒否しました。
error-remote-boat-forbidden = Boat がアクセスを拒否しました。API キーのスコープとサンドボックスアクセスを確認してください。
error-remote-boat-status = Boat リクエストが失敗しました（HTTP { $code }）
error-remote-boat-status-message = Boat リクエストが失敗しました（HTTP { $code }）: { $detail }
error-remote-boat-network = Boat ネットワークリクエストが失敗またはタイムアウトしました。
error-remote-boat-read = Boat 応答をサイズ/時間制限内に読み取れませんでした。
error-remote-boat-size = Boat 応答がサイズ上限を超えました。
error-remote-boat-json = 無効な Boat JSON 応答です。
error-remote-boat-header = 無効な Boat HTTP ヘッダーです。
error-remote-boat-sandbox = Boat サンドボックスに失敗しました: { $detail }
error-remote-boat-deleted = Boat サンドボックスは削除されました。
error-remote-boat-start-timeout = Boat サンドボックスが 10 分以内に起動しませんでした。
error-remote-boat-cancelled = キャンセルされました。
error-remote-boat-pending-io = { $path } の保留中の Boat 作成を保存または読み取れませんでした: { $error }
error-remote-boat-pending-busy = 別の Herdr UI プロセスがこのアカウントの Boat サンドボックスを作成または復旧中です。
error-remote-boat-pending-expired = 保留中の Boat 作成が古すぎて安全に再試行できません。設定 > クラウドデバイス > Boat で保留中のリクエストを忘れる前に、Boat ダッシュボードでサンドボックスを確認してください。
error-remote-boat-pending-creation = Boat の作成が成功した可能性があります。設定 > クラウドデバイス > Boat の「作成を復旧」を使用して、保存されたリクエストを再試行してください: { $error }
error-remote-boat-clock = Boat 作成の復旧用に時計を読み取れませんでした: { $error }
error-remote-boat-gateway = Boat がこのアプリで理解できない SSH 接続データを返しました。
error-remote-boat-ssh-missing = Boat デバイスには PATH 上の ssh と ssh-keygen が必要です。実行できませんでした。
error-remote-boat-ssh-key = Boat SSH キーを作成または読み取れませんでした。
error-remote-boat-ssh-keygen = ssh-keygen が Boat SSH キーを作成できませんでした。
error-remote-boat-gateway-file = Boat 用の SSH コマンドを準備できませんでした。
error-remote-boat-save-device = Boat サンドボックス { $id } は存在しますが、そのデバイスを保存できませんでした: { $error }。この ID を保持してサンドボックスを復旧してください。
error-remote-boat-setup = Boat サンドボックス { $id } は保存されました。設定 > クラウドデバイス > Boat の「セットアップを完了」で再試行してください: { $error }
error-remote-boat-account = このデバイスは [boat] で設定されなくなった Boat アカウントに属しています。
error-remote-boat-key-file = Boat SSH 秘密キーを読み込めませんでした: { $error }
