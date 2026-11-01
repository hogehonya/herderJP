# Settings > Cloud devices > Coder. User, workspace, and deployment names
# come from Coder and stay as they are.

settings-cloud-coder-note = デバイスピッカーから Coder ワークスペースを作成してデバイスとして使用します。下のリダイレクト URI で Coder に OAuth2 アプリを登録してください。デプロイメントで oauth2 実験を有効にする必要があります。
settings-cloud-coder-not-configured = 未設定です。デプロイメントとその OAuth アプリを入力して保存してください。
settings-cloud-coder-waiting-for-browser = ブラウザを待機中…
settings-cloud-coder-finish-in-browser = ブラウザでサインインを完了してください…
settings-cloud-coder-not-signed-in = サインインしていません
settings-cloud-coder-signed-in-as = { $user } としてサインイン済み
settings-cloud-coder-unreadable = サインイン済み。アカウントを読み取れませんでした: { $reason }
settings-cloud-coder-sign-in = サインイン
settings-cloud-coder-sign-out = サインアウト

settings-cloud-coder-url = デプロイメント URL
settings-cloud-coder-client-id = OAuth クライアント ID
settings-cloud-coder-client-id-placeholder = OAuth2 アプリのクライアント ID
settings-cloud-coder-redirect = リダイレクト URI
settings-cloud-coder-organization = 組織
settings-cloud-coder-organization-placeholder = 任意。空の場合はデフォルト組織
settings-cloud-coder-prefix = ワークスペース名プレフィックス
settings-cloud-coder-prefix-placeholder = 任意。空の場合は herdr
settings-cloud-coder-cli = coder CLI
settings-cloud-coder-cli-placeholder = 任意。空の場合は PATH から検出
settings-cloud-coder-secret = OAuth クライアントシークレット
settings-cloud-coder-secret-environment = HERDR_CODER_OAUTH_CLIENT_SECRET で設定されており、こちらが優先されます。
settings-cloud-coder-secret-config = 設定ファイルの [coder] oauth_client_secret で設定されており、こちらが優先されます。
settings-cloud-coder-secret-saved = 保存しました。置き換えるには新しいシークレットを入力してください。
settings-cloud-coder-secret-missing = まだ保存されていません。Coder はサインインに必要です。
settings-cloud-coder-forget-secret = シークレットを忘れる

settings-cloud-coder-devices = Coder デバイス
settings-cloud-coder-none-yet = まだありません。デバイスを追加… の Coder から追加してください。
settings-cloud-coder-remove-note = 削除するとこのリストからデバイスが外れ、ワークスペースは Coder で実行を続けます。破棄すると Coder でワークスペースが削除されます。
settings-cloud-coder-destroy = 破棄…
settings-cloud-coder-destroy-confirm = ワークスペースを破棄
settings-cloud-coder-destroy-warning = 破棄すると Coder のワークスペース { $workspace } とそのディスクが削除され、ここからも削除されます。この操作は元に戻せません。
settings-cloud-coder-destroy-contacting = Coder に接続中…
settings-cloud-coder-destroy-waiting = ワークスペースの現在のビルドが完了するのを待っています…
settings-cloud-coder-destroy-queued = Coder でキューに入りました…
settings-cloud-coder-destroy-deleting = ワークスペースを削除中…
settings-cloud-coder-destroyed = { $name } を破棄しました。
settings-cloud-coder-destroy-failed = { $name } を破棄できませんでした: { $error }
