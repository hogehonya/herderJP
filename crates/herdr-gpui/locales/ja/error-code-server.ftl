# The VS Code server the app reaches or starts for code tabs.

error-code-server-exited = VS Code が停止しました（{ $status }）。
error-code-server-no-data-dir = アプリのデータ用フォルダがありません。HOME を設定してください。
error-code-server-no-free-port = VS Code 用の空きポートが見つかりませんでした。
error-code-server-not-server = このアドレスは VS Code サーバーではありません（HTTP { $status }）。
error-code-server-port-check = 127.0.0.1 のポート { $port } を確認できませんでした。
error-code-server-port-taken = 127.0.0.1 のポート { $port } は別のプログラムが使用中です。終了するか、config-gpui.local.toml の [code] から `port` を削除して別のポートを選んでください。その後 VS Code はこのポート用に保持していた設定なしで起動します。
error-code-server-silent = VS Code が { $seconds } 秒以内に応答しませんでした。
error-code-server-spawn = { $program } を開始できませんでした。
error-code-server-status = VS Code サーバーが HTTP { $status } で応答しました。
error-code-server-token-file = VS Code のトークンファイル { $path } を使用できませんでした。
error-code-server-token-random = VS Code の接続トークンを作成できませんでした。
error-code-server-token-refused = サーバーが接続トークンを拒否しました。表示されるアドレスとその ?tkn= を使用してください。
error-code-server-unreachable = { $reason ->
    [refused] { $address } で接続が拒否されました。
    [timeout] { $address } で 3 秒以内に応答がありません。
    [unknown-host] { $address } は不明なホストです。
   *[other] { $address } に接続できません。
}
error-code-server-watch = VS Code プロセスを監視できませんでした。
error-code-server-worker = VS Code ワーカーを開始できませんでした。
