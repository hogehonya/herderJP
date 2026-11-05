# Azure VMs and Container Apps sandboxes as cloud devices. $detail is
# Azure's own text (or the Azure CLI's), kept as it is; $error is the
# failure underneath.

error-remote-azure-missing-subscription = Azure にはサブスクリプション ID が必要です。設定 > クラウドデバイスで設定してください。
error-remote-azure-missing-credentials = Azure には認証情報（クライアントシークレットまたは Azure CLI ログイン）が必要です。
error-remote-azure-authentication = Azure の認証に失敗しました: { $detail }
error-remote-azure-forbidden = Azure がアクセスを拒否しました: { $detail }
error-remote-azure-status = Azure API が HTTP { $code } を返しました: { $detail }
error-remote-azure-network = Azure ネットワークリクエストが失敗またはタイムアウトしました: { $error }
error-remote-azure-read = Azure 応答をサイズ/時間制限内に読み取れませんでした。
error-remote-azure-size = Azure 応答がサイズ上限を超えました。
error-remote-azure-json = 無効な Azure JSON 応答です。
error-remote-azure-header = 無効な Azure HTTP ヘッダーです。
error-remote-azure-vm = Azure VM に失敗しました: { $detail }
error-remote-azure-deleted = Azure VM は削除されました。
error-remote-azure-start-timeout = Azure VM が 10 分以内に準備完了になりませんでした。
error-remote-azure-sandbox = Azure サンドボックスに失敗しました: { $detail }
error-remote-azure-sandbox-deleted = Azure サンドボックスは削除されました。
error-remote-azure-sandbox-timeout = Azure サンドボックスが 5 分以内に準備完了になりませんでした。
error-remote-azure-delete-timeout = Azure が 10 分以内にマシンの削除を完了しませんでした。
error-remote-azure-stream = Azure サンドボックスシェルストリームに失敗しました。
error-remote-azure-stream-header = 無効な Azure サンドボックスシェルストリームヘッダーです。
error-remote-azure-stream-closed = コマンド完了前に Azure サンドボックスシェルストリームが閉じられました。
error-remote-azure-stream-message = Azure サンドボックスシェルストリームがこのアプリで理解できないデータを送信しました。
error-remote-azure-tls = Azure サンドボックスシェルストリーム用の TLS を設定できませんでした。
error-remote-azure-executable = サンドボックスシェルを中継するためのこのアプリの実行ファイルが見つかりませんでした。
error-remote-azure-cancelled = キャンセルされました。
error-remote-azure-gateway = Azure がこのアプリで理解できない SSH 接続データを返しました。
error-remote-azure-ssh-missing = Azure デバイスには PATH 上の ssh と ssh-keygen が必要です。実行できませんでした。
error-remote-azure-ssh-keygen = Azure デバイスの SSH キーの生成に失敗しました。
error-remote-azure-az-missing = Azure CLI（az）が PATH に見つかりませんでした。
error-remote-azure-az-failed = Azure CLI コマンドが失敗しました: { $detail }
error-remote-azure-process = マシンに到達するコマンドを実行できませんでした。
error-remote-azure-storage = 保存された Azure 認証情報を更新できませんでした: { $error }
error-remote-azure-save-device = クラウドデバイス { $id } を保存できませんでした: { $error }
error-remote-azure-account = 設定の Azure アカウントがこの保存済みデバイスと一致しません。
error-remote-azure-not-running = Azure マシンは実行されていません。接続すると起動します。
error-remote-azure-sku-not-available = Azure にはこのサイズの容量がありません: { $detail }
