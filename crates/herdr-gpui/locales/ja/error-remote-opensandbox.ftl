# Sandboxes on a self-hosted OpenSandbox server as cloud devices. $detail
# is the server's own text, kept as it is. [opensandbox] is the config
# table; api_url is its key.

error-remote-opensandbox-url = { $field } は認証情報、クエリ、フラグメントを含まない https（ループバックのみ http）である必要があります。
error-remote-opensandbox-missing-key = OpenSandbox には API キーが必要です。設定 > クラウドデバイスで保存してください。
error-remote-opensandbox-authentication = OpenSandbox が API キーを拒否しました。
error-remote-opensandbox-forbidden = OpenSandbox がアクセスを拒否しました。
error-remote-opensandbox-gone = サンドボックス { $id } はもう存在しません。
error-remote-opensandbox-stopped = サンドボックスが停止しました: { $detail }
error-remote-opensandbox-start-timeout = サンドボックスが 5 分以内に起動しませんでした。
error-remote-opensandbox-status = OpenSandbox リクエストが失敗しました（HTTP { $code }）
error-remote-opensandbox-status-message = OpenSandbox リクエストが失敗しました（HTTP { $code }）: { $detail }
error-remote-opensandbox-network = OpenSandbox ネットワークリクエストが失敗またはタイムアウトしました。
error-remote-opensandbox-read = OpenSandbox 応答をサイズ/時間制限内に読み取れませんでした。
error-remote-opensandbox-size = OpenSandbox 応答がサイズ上限を超えました。
error-remote-opensandbox-json = 無効な OpenSandbox JSON 応答です。
error-remote-opensandbox-header = 無効な OpenSandbox リクエストヘッダーです。
error-remote-opensandbox-shell = サンドボックスのシェルがコマンドを拒否しました: { $detail }
error-remote-opensandbox-output = コマンドの出力を書き込めませんでした。
error-remote-opensandbox-executable = 中継するためのこのアプリの実行ファイルが見つかりませんでした。
error-remote-opensandbox-cancelled = キャンセルされました。
error-remote-opensandbox-account = このデバイスは [opensandbox] api_url で設定されなくなった OpenSandbox サーバーに属しています。
