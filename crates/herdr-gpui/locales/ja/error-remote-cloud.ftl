# Failures every cloud provider shares: the saved cloud devices, sandbox
# images built from a project's recipe, and the exec stream the app relays a
# sandbox's shell through. $path is a file, $error is the system's text.

error-remote-cloud-catalog = { $path } を更新できませんでした: { $error }
error-remote-cloud-json = 保存されたクラウドデバイスが無効です。
error-remote-cloud-invalid-catalog = { $path } は有効ではありません。
error-remote-cloud-invalid-device = クラウドデバイスが有効ではありません。
error-remote-cloud-invalid-target = クラウドターゲットが有効ではありません。
error-remote-cloud-missing = クラウドデバイスはもう保存されていません。
error-remote-cloud-state-directory = 保存されたクラウドデバイス用の状態ディレクトリがありません。
error-remote-cloud-worker = { $worker ->
    [destroy] クラウド破棄ワーカーが停止しました。
    [image-build] クラウドイメージビルドワーカーが停止しました。
    [image-reset] クラウドイメージリセットワーカーが停止しました。
    [job] クラウドジョブワーカーが停止しました。
    [settings] クラウド設定ワーカーが停止しました。
   *[setup] クラウドセットアップワーカーが停止しました。
    [sign-in] クラウドサインインワーカーが停止しました。
}
error-remote-cloud-process = マシンに到達するコマンドを実行できませんでした。
error-remote-cloud-cancelled = キャンセルされました。
error-remote-cloud-install = Herdr のインストールに失敗しました: { $detail }
error-remote-cloud-install-missing = Herdr のインストールに失敗しました: インストーラーは完了しましたが、Herdr が想定されたパスにありません
error-remote-cloud-install-no-curl = Herdr のインストールに失敗しました: マシンに curl がありません。イメージに追加するか、そこで Herdr を手動でインストールしてください
error-remote-cloud-install-no-output = Herdr のインストールに失敗しました: インストーラーが完了しませんでした
error-remote-cloud-install-unreachable = Herdr のインストールに失敗しました: リモートコマンドがマシンに到達できませんでした
error-remote-cloud-install-not-installed = Herdr のインストールに失敗しました: { $machine } に Herdr がインストールされていません。{ $retry ->
        [add] 追加して再試行してください
        [allow] インストールを許可して再試行してください
        [finish-setup] 「Herdr をインストール」を有効にして「セットアップを完了」を使用してください
       *[enable] 「Herdr をインストール」を有効にして再試行してください
    }
error-remote-cloud-install-not-installed-unnamed = Herdr のインストールに失敗しました: マシンに Herdr がインストールされていません。{ $retry ->
        [add] 追加して再試行してください
        [allow] インストールを許可して再試行してください
        [finish-setup] 「Herdr をインストール」を有効にして「セットアップを完了」を使用してください
       *[enable] 「Herdr をインストール」を有効にして再試行してください
    }
error-remote-cloud-install-timeout = Herdr のインストールが 5 分以内に完了しませんでした。
error-remote-cloud-unavailable = Windows ではクラウドデバイスを利用できません。

error-remote-cloud-image-busy = このイメージの別のビルドが実行中です。完了までお待ちください。
error-remote-cloud-image-cancelled = キャンセルされました。
error-remote-cloud-image-catalog = { $path } を更新できませんでした: { $error }
error-remote-cloud-image-context = { $provider } はまだイメージにファイルをコピーできません。レシピの COPY と ADD 行を削除するか、コンテナを使用してください。
error-remote-cloud-image-devcontainer = dev コンテナ定義が有効な JSON ではありません。
error-remote-cloud-image-field-catalog = { $path } は有効ではありません。
error-remote-cloud-image-field-context-path = ビルドコンテキスト外のファイルパスは有効ではありません。
error-remote-cloud-image-field-devcontainer-image = dev コンテナのイメージが有効ではありません。
error-remote-cloud-image-field-file-name = UTF-8 ではないファイル名は有効ではありません。
error-remote-cloud-image-field-projects = サンドボックスイメージが多すぎるプロジェクト用に保持されています。
error-remote-cloud-image-field-project-path = プロジェクト外のパスは有効ではありません。
error-remote-cloud-image-host = ホストからプロジェクトのレシピを読み取れませんでした。
error-remote-cloud-image-json = サンドボックスイメージの記録が無効です。
error-remote-cloud-image-missing = レシピが { $path } を指定していますが、プロジェクトにありません。
error-remote-cloud-image-state-directory = サンドボックスイメージ用の状態ディレクトリがありません。
error-remote-cloud-image-too-large = プロジェクトのレシピに、イメージビルドが受け取るより多くのファイルがあります。
error-remote-cloud-image-truncated = 読み取り中にプロジェクトのレシピが変更されました。再試行してください。
error-remote-cloud-image-unknown = このアプリにはそのプロジェクトのイメージの記録がありません。
error-remote-cloud-image-unsupported-compose = このプロジェクトのレシピは Docker Compose で定義された dev コンテナを使用していますが、サンドボックスイメージではサポートされていません。
error-remote-cloud-image-unsupported-no-build = このプロジェクトのレシピはイメージも Dockerfile もない dev コンテナを使用していますが、サンドボックスイメージではサポートされていません。
error-remote-cloud-image-unsupported-provider = このプロジェクトのレシピはイメージを保持しないプロバイダーを使用していますが、サンドボックスイメージではサポートされていません。

error-remote-cloud-socket-url = exec ストリームのアドレスが有効ではありません。
error-remote-cloud-socket-connect = exec ストリームに到達できませんでした。
error-remote-cloud-socket-tls = exec ストリームの TLS 設定に失敗しました。
error-remote-cloud-socket-stream = exec ストリームに失敗しました。
error-remote-cloud-socket-header = 無効な exec ストリームヘッダーです。
error-remote-cloud-socket-header-name = 無効な exec ストリームヘッダー名です。
error-remote-cloud-socket-closed = コマンド完了前に exec ストリームが閉じられました。

error-remote-cloud-value-invalid-key = { $key } は有効ではありません。
error-remote-cloud-value-invalid = { $value ->
   *[account] アカウントが有効ではありません。
    [azure-access-token] Azure アクセストークンが有効ではありません。
    [azure-client-secret] Azure クライアントシークレットが有効ではありません。
    [azure-device-account] 保存された Azure デバイスアカウントが有効ではありません。
    [azure-sandbox-endpoint] Azure サンドボックスエンドポイントが有効ではありません。
    [azure-sandbox-id] Azure サンドボックス ID が有効ではありません。
    [azure-ssh-public-key] Azure SSH 公開キーが有効ではありません。
    [boat-api-key] Boat API キーが有効ではありません。
    [boat-auto-stop] boat.auto_stop（never または 1～2592000 秒）が有効ではありません。
    [boat-pending] Boat の保留中の作成が有効ではありません。
    [boat-pending-path] Boat の保留パスが有効ではありません。
    [boat-pending-size] Boat の保留中の作成サイズが有効ではありません。
    [boat-sandbox-id] Boat サンドボックス ID が有効ではありません。
    [boat-ssh-private-key] Boat SSH 秘密キーが有効ではありません。
    [boat-ssh-public-key] Boat SSH 公開キーが有効ではありません。
    [coder-identifier] Coder 識別子が有効ではありません。
    [coder-workspace] Coder ワークスペースが有効ではありません。
    [container-engine] コンテナエンジンが有効ではありません。
    [daytona-api-key] Daytona API キーが有効ではありません。
    [daytona-sandbox-id] Daytona サンドボックス ID が有効ではありません。
    [daytona-snapshot] Daytona スナップショット名が有効ではありません。
    [exec-session-id] Exec セッション ID が有効ではありません。
    [execd-endpoint] Execd エンドポイントが有効ではありません。
    [opensandbox-api-key] OpenSandbox API キーが有効ではありません。
    [remote-command] リモートコマンドが有効ではありません。
    [sandbox-id] サンドボックス ID が有効ではありません。
    [sprite-name] スプライト名が有効ではありません。
    [sprite-prefix] スプライトプレフィックスが有効ではありません。
    [sprites-api-token] Sprites API トークンが有効ではありません。
    [workspace-name] ワークスペース名が有効ではありません。
}
error-remote-cloud-value-encoding-key = { $key } は UTF-8 である必要があります。
error-remote-cloud-value-encoding = { $value ->
   *[account] アカウントは UTF-8 である必要があります。
    [azure-access-token] Azure アクセストークンは UTF-8 である必要があります。
    [azure-client-secret] Azure クライアントシークレットは UTF-8 である必要があります。
    [azure-device-account] 保存された Azure デバイスアカウントは UTF-8 である必要があります。
    [azure-sandbox-endpoint] Azure サンドボックスエンドポイントは UTF-8 である必要があります。
    [azure-sandbox-id] Azure サンドボックス ID は UTF-8 である必要があります。
    [azure-ssh-public-key] Azure SSH 公開キーは UTF-8 である必要があります。
    [boat-api-key] Boat API キーは UTF-8 である必要があります。
    [boat-auto-stop] boat.auto_stop（never または 1～2592000 秒）は UTF-8 である必要があります。
    [boat-pending] Boat の保留中の作成は UTF-8 である必要があります。
    [boat-pending-path] Boat の保留パスは UTF-8 である必要があります。
    [boat-pending-size] Boat の保留中の作成サイズは UTF-8 である必要があります。
    [boat-sandbox-id] Boat サンドボックス ID は UTF-8 である必要があります。
    [boat-ssh-private-key] Boat SSH 秘密キーは UTF-8 である必要があります。
    [boat-ssh-public-key] Boat SSH 公開キーは UTF-8 である必要があります。
    [coder-identifier] Coder 識別子は UTF-8 である必要があります。
    [coder-workspace] Coder ワークスペースは UTF-8 である必要があります。
    [container-engine] コンテナエンジンは UTF-8 である必要があります。
    [daytona-api-key] Daytona API キーは UTF-8 である必要があります。
    [daytona-sandbox-id] Daytona サンドボックス ID は UTF-8 である必要があります。
    [daytona-snapshot] Daytona スナップショット名は UTF-8 である必要があります。
    [exec-session-id] Exec セッション ID は UTF-8 である必要があります。
    [execd-endpoint] Execd エンドポイントは UTF-8 である必要があります。
    [opensandbox-api-key] OpenSandbox API キーは UTF-8 である必要があります。
    [remote-command] リモートコマンドは UTF-8 である必要があります。
    [sandbox-id] サンドボックス ID は UTF-8 である必要があります。
    [sprite-name] スプライト名は UTF-8 である必要があります。
    [sprite-prefix] スプライトプレフィックスは UTF-8 である必要があります。
    [sprites-api-token] Sprites API トークンは UTF-8 である必要があります。
    [workspace-name] ワークスペース名は UTF-8 である必要があります。
}
