# Coder workspaces as cloud devices. $detail is Coder's own text, kept as
# it is. [coder] is the config table; url and cli are its keys.

error-remote-coder-url = { $field } は認証情報、クエリ、フラグメントを含まない https（ループバックのみ http）である必要があります。
error-remote-coder-missing = Coder には { $key } が必要です。設定 > クラウドデバイスで設定してください。
error-remote-coder-authentication = Coder のサインインが必要です。
error-remote-coder-client = Coder が OAuth クライアントシークレットを拒否しました。Coder の OAuth2 アプリのシークレットを設定 > クラウドデバイスにコピーして、再度サインインしてください。
error-remote-coder-forbidden = Coder がアクセスを拒否しました。このテンプレートに対するアカウントの権限を確認してください。
error-remote-coder-status = Coder リクエストが失敗しました（HTTP { $code }）
error-remote-coder-status-message = Coder リクエストが失敗しました（HTTP { $code }）: { $detail }
error-remote-coder-network = Coder ネットワークリクエストが失敗またはタイムアウトしました。
error-remote-coder-read = Coder 応答をサイズ/時間制限内に読み取れませんでした。
error-remote-coder-size = Coder 応答がサイズ上限を超えました。
error-remote-coder-json = 無効な Coder JSON 応答です。
error-remote-coder-header = 無効な Coder 認可ヘッダーです。
error-remote-coder-listen = { $address } で Coder サインインリダイレクトを待ち受けられませんでした。
error-remote-coder-redirect = Coder サインインリダイレクトを読み取れませんでした。
error-remote-coder-cancelled = Coder サインインがキャンセルされました。
error-remote-coder-timeout = Coder サインインがタイムアウトしました。再度サインインしてください。
error-remote-coder-authorization = Coder がこのサインインを認可しませんでした（{ $detail }）。
error-remote-coder-token = 無効な Coder トークン応答です。
error-remote-coder-random = ランダムなサインインシークレットを生成できませんでした。
error-remote-coder-workspace = Coder ワークスペースに失敗しました: { $detail }
error-remote-coder-deleted = Coder ワークスペースは削除されました。
error-remote-coder-build-timeout = Coder ワークスペースが 10 分以内に準備完了になりませんでした。
error-remote-coder-delete-timeout = Coder ワークスペースが 10 分以内に削除されませんでした。Coder で確認してください。
error-remote-coder-cli = coder CLI が見つかりませんでした。インストールするか、[coder] cli にそのパスを設定してください。
error-remote-coder-deployment = このデバイスは [coder] url で設定されなくなった Coder デプロイメントに属しています。
error-remote-coder-catalog = { $path } を更新できませんでした: { $error }
error-remote-coder-worker = { $worker ->
    [destroy] Coder 破棄ワーカーが停止しました。
    [image-build] Coder イメージビルドワーカーが停止しました。
    [image-reset] Coder イメージリセットワーカーが停止しました。
    [job] Coder ジョブワーカーが停止しました。
    [settings] Coder 設定ワーカーが停止しました。
   *[setup] Coder セットアップワーカーが停止しました。
    [sign-in] Coder サインインワーカーが停止しました。
}
error-remote-coder-ambiguous-template = { $name } として表示される Coder テンプレートが複数あります（{ $matches }）。名前または ID で指定してください。
error-remote-coder-template = { $name } という名前の Coder テンプレートはありません。利用可能: { $available }。
error-remote-coder-template-unnamed = Coder には複数のテンプレートがあります（{ $available }）。--template で指定してください。
error-remote-coder-preset = Coder テンプレート { $template } には { $name } という名前のプリセットはありません。利用可能: { $available }。
