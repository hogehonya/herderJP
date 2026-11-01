# The Add Device dialog: its frame and rail, and the SSH host form.

add-device-title = デバイスを追加
add-device-close = 閉じる
add-device-source-host = SSH ホスト
add-device-source-catalog = プロバイダーを追加
add-device-cloud-heading = クラウド
add-device-offer-ssh-wsl-cloud = SSH ホスト、WSL ディストリビューション、またはクラウドマシン
add-device-offer-ssh-wsl = SSH ホストまたは WSL ディストリビューション
add-device-offer-ssh-cloud = SSH ホストまたはクラウドマシン
add-device-offer-ssh = SSH 経由でリモートホストをセットアップ
add-device-coder-connect = 設定で Coder デプロイメントに接続すると、ここでワークスペースを作成またはアタッチできます。
add-device-open-settings = 設定を開く…
add-device-providers-all-set = すべてのクラウドプロバイダーがセットアップ済みで、SSH の隣に表示されています。
add-device-providers-lead = 設定でプロバイダーをセットアップすると、デバイスを追加に SSH の隣に表示されます。

add-device-target-placeholder = user@hostname または SSH エイリアス
add-device-label-placeholder = SSH ターゲット
add-device-intro = Herdr は SSH 経由でホストを確認してデバイスを保存します。Herdr がない場合や SSH が入力待ちの場合は、ローカルワークスペースでセットアップが続きます。
add-device-target = SSH ターゲット
add-device-label = ラベル（任意）
add-device-session = リモートセッション（任意）
add-device-checking = { $target } の Herdr を確認中…
add-device-starting = { $target } には Herdr がインストールされていますが、実行されていません。起動中…
add-device-saving = { $target } で Herdr が実行中です。デバイスを保存中…
add-device-fetching-key = { $target } のホストキーを取得中…
add-device-verifying = { $target } がまだ保存されていないことを確認中…
add-device-opening = ローカルワークスペースを開いています…
add-device-cancel = キャンセル
add-device-trust-key = キーを信頼
add-device-submit = デバイスを追加
add-device-submit-checking = 確認中…
add-device-check-failed = { $target } を確認: { $error }
add-device-ssh-failed = { $target } への SSH: { $error }
add-device-open-failed = ローカルワークスペースを開く: { $error }
add-device-unexpected-response = デーモンから予期しない応答

add-device-local-network-settings = ローカルネットワーク設定を開く
add-device-local-network-waiting = macOS がローカルネットワーク上で Herdr の { $target } への接続を拒否しました。macOS が確認したら Herdr を許可するか、システム設定 › プライバシーとセキュリティ › ローカルネットワークでオンにしてください。Herdr は自動的に再確認します。

add-device-key-changed = { $target } のホストキーが以前に信頼したものと異なります。接続が傍受されている可能性があります。ターミナルで確認してください。
add-device-key-fetch-failed = { $target } のホストキーを取得: { $error }
add-device-key-unknown = { $target } はまだ既知のホストではありません。このフィンガープリントがホスト自身のキーと一致する場合にのみ信頼してください:
add-device-key-check = ホスト上で ssh-keygen -lf { $host_file } を実行すると表示されます。信頼するとキーが { $known_hosts } に追加されます。

add-device-ask-install = { $target } に Herdr が見つかりませんでした。インストールしますか？
add-device-ask-update = { $target } の Herdr はこのアプリには古すぎます。更新しますか？
add-device-ask-terminal = { $target } のセットアップには SSH パスワードやホストキーなどの入力が必要です。ローカルターミナルで続行しますか？
add-device-ask-restart = { $target } の Herdr サーバーを再起動しますか？ローカルターミナルで確認を求められます。
add-device-ask-key-user = { $target } はユーザー { $user } の SSH キーを受け入れませんでした。別のユーザーでログインする場合は、ターゲットを { $example } に変更して Enter を押し、確認してください。そうでなければ、{ $user } のキーをインストールしますか？ローカルターミナルが ssh-copy-id を実行し、パスワードを一度尋ねてからデバイスを保存します。
add-device-ask-key = { $target } は SSH キーを受け入れませんでした。キーをインストールしますか？ローカルターミナルが ssh-copy-id を実行し、パスワードを一度尋ねてからデバイスを保存します。
add-device-example-user = name
add-device-install = インストール
add-device-update = 更新
add-device-open-terminal = ターミナルを開く
add-device-set-up-key = キーログインをセットアップ
add-device-terminal-install = { $target } のセットアップにはターミナルが必要です: Herdr が見つかりませんでした。ターミナルで `herdr machine add { $target }` を実行してから、デバイスを再度追加してください。
add-device-terminal-update = { $target } のセットアップにはターミナルが必要です: Herdr がこのアプリには古すぎます。ターミナルで `herdr machine add { $target }` を実行してから、デバイスを再度追加してください。
add-device-terminal-input = { $target } のセットアップにはターミナルが必要です: SSH がパスワードやホストキーなどの入力待ちです。ターミナルで `herdr machine add { $target }` を実行してから、デバイスを再度追加してください。
add-device-terminal-restart = { $target } のセットアップにはターミナルが必要です: Herdr サーバーを再起動する必要があります。ターミナルで `herdr machine add { $target }` を実行してから、デバイスを再度追加してください。
add-device-terminal-key-user = { $target } のセットアップにはターミナルが必要です: ユーザー { $user } の SSH キーを受け入れませんでした（別のユーザーでログインするには { $example } を使用）。ターミナルで `herdr machine add { $target }` を実行してから、デバイスを再度追加してください。
add-device-terminal-key = { $target } のセットアップにはターミナルが必要です: SSH キーを受け入れませんでした。ターミナルで `herdr machine add { $target }` を実行してから、デバイスを再度追加してください。
add-device-skip-host-key = ホストキーの検証をスキップ（危険）
add-device-skip-host-key-warning = Herdr はこのホストが提示する任意のキーを、現在および今後のすべての接続で受け入れます。接続を傍受できる者はホストになりすましてターミナルを読むことができます。キーを保持しないホスト（Coder ワークスペースなど）にのみ使用してください。
