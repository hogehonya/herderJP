# Settings > Code: where VS Code tabs' server comes from, its license, the
# check of a server's address, and px0's workbench address.

settings-code-vscode = VS Code
settings-code-start = VS Code を自動的に起動
settings-code-address = アドレスを使用
settings-code-no-pages = このビルドはページを表示しないため、VS Code を起動しません。
settings-code-finding = VS Code を検索中…
settings-code-found = VS Code: { $path }
settings-code-missing = PATH または Applications に VS Code が見つかりませんでした。アプリに起動させるにはインストールするか、自分で実行するサーバーのアドレスを使用してください。

settings-code-server = サーバー
settings-code-start-note = アプリは VS Code タブが初めて必要としたときに 127.0.0.1 で `code serve-web` を実行し、アプリ終了時に停止します。
settings-code-idle = まだ開始していません。
settings-code-starting = VS Code を起動中…（初回はダウンロードします）
settings-code-running = { $address } で実行中
settings-code-failed = { $error } 再試行中…
settings-code-license-terms = VS Code サーバーは Microsoft のソフトウェアです。起動すると Visual Studio Code Server License Terms と Microsoft Privacy Statement に同意したことになるため、アプリは同意後にのみ起動します。
settings-code-license-link = ライセンス条項
settings-code-privacy-link = プライバシーステートメント
settings-code-accept = 同意して起動

settings-code-address-note = `code serve-web` でサーバーを起動し、表示されるアドレスを ?tkn= トークン込みで貼り付けてください。
settings-code-address-invalid = { $example } のような http または https アドレスを入力してください
settings-code-test = 接続をテスト
settings-code-testing = テスト中…
settings-code-connected = VS Code に接続しました
settings-code-commit = コミット { $commit }

settings-code-px0 = px0
settings-code-px0-placeholder = 自動、または { $example }
settings-code-px0-note = アドレスを空にすると、ローカルワークベンチを検出するか、タブを開いたときにインストール済みの px0 を起動します。自分で実行するワークベンチに接続するにはアドレスを設定してください。
settings-code-px0-invalid = 認証情報、クエリ、フラグメントを含まないループバック HTTP ワークベンチアドレスを使用してください。
settings-code-px0-apply = px0 アドレスを適用
