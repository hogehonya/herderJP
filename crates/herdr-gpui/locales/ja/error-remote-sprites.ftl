# Fly Sprites as cloud devices. $detail is the Sprites API's own text, kept
# as it is. [sprites] is the config table; api_url is its key. A sprite is
# what Sprites calls one machine.

error-remote-sprites-url = { $field } は認証情報、クエリ、フラグメントを含まない https（ループバックのみ http）である必要があります。
error-remote-sprites-missing-token = Sprites には API トークンが必要です。設定 > クラウドデバイスで保存してください。
error-remote-sprites-authentication = Sprites が API トークンを拒否しました。
error-remote-sprites-forbidden = Sprites がアクセスを拒否しました。トークンの組織を確認してください。
error-remote-sprites-gone = スプライト { $name } はもう存在しません。
error-remote-sprites-status = Sprites リクエストが失敗しました（HTTP { $code }）
error-remote-sprites-status-message = Sprites リクエストが失敗しました（HTTP { $code }）: { $detail }
error-remote-sprites-network = Sprites ネットワークリクエストが失敗またはタイムアウトしました。
error-remote-sprites-read = Sprites 応答をサイズ/時間制限内に読み取れませんでした。
error-remote-sprites-size = Sprites 応答がサイズ上限を超えました。
error-remote-sprites-json = 無効な Sprites JSON 応答です。
error-remote-sprites-header = 無効な Sprites 認可ヘッダーです。
error-remote-sprites-output = コマンドの出力を書き込めませんでした。
error-remote-sprites-executable = 中継するためのこのアプリの実行ファイルが見つかりませんでした。
error-remote-sprites-cancelled = キャンセルされました。
error-remote-sprites-account = このデバイスは [sprites] api_url で設定されなくなった Sprites アカウントに属しています。
