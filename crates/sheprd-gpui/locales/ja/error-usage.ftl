# Why an AI service's plan usage could not be read, shown in the status bar
# and the usage panel. None of it carries account details.

error-usage-cloud-host-unsupported = これはクラウドマシンではまだ利用できません。
error-usage-command = { $kind ->
    [agy-sign-in] 使用状況コマンドが失敗しました: agy が使用状況を報告できませんでした。agy を実行してサインインしてください。
    [agy-version] 使用状況コマンドが失敗しました: 使用状況レポートには agy 1.1.11 以降が必要です。
    [coderabbit] 使用状況コマンドが失敗しました: CodeRabbit の使用状況を読み取れませんでした。
    [gemini-client] 使用状況コマンドが失敗しました: サインインを更新するための Gemini CLI の OAuth クライアントが見つかりませんでした。
    [windsurf] 使用状況コマンドが失敗しました: Windsurf プランキャッシュを読み取れませんでした。
   *[other] 使用状況コマンドが失敗しました: { $command }。
}
error-usage-connect = このホストから使用状況サービスに到達できませんでした。
error-usage-header = 保存されたサインインをヘッダーとして送信できません。
error-usage-json = 使用状況の応答が期待される JSON ではありませんでした。
error-usage-keychain-access = このサインインの読み取りには Keychain アクセスが必要で、macOS が確認します。
error-usage-keychain-denied = Keychain アクセスが拒否されたため、このサインインを読み取れません。
error-usage-missing-curl = このホストに curl がインストールされていないため、使用状況を読み取れません。
error-usage-mixed-secrets = 使用状況リクエストがこのマシンの設定とリモートホストのサインインを混在させています。
error-usage-network = 使用状況リクエストが失敗またはタイムアウトしました。
error-usage-no-plan = このアカウントには表示できる使用制限付きプランがありません。
error-usage-not-signed-in = このホストにサインインが見つかりません。設定の [usage.providers] で設定してください。
error-usage-process = { $kind ->
    [cookie-key] ブラウザの Cookie キーを読み取れませんでした。
    [keychain] キーチェーン項目を読み取れませんでした。
    [provider-command] プロバイダーコマンドを実行できませんでした。
    [remote-shell] リモート使用状況シェルを開始できませんでした。
   *[other] { $operation } を実行できませんでした。
}
error-usage-rate-limited = 使用状況がレート制限されています。後で再試行します。
error-usage-rejected = 保存されたサインインが拒否されました。エージェントを開いて再度サインインしてください。
error-usage-size = 使用状況の出力がサイズ上限を超えました。
error-usage-status = 使用状況サービスが HTTP { $status } を返しました。
error-usage-timeout = 使用状況の確認がタイムアウトしました。
error-usage-unreachable = 使用状況を読み取るために SSH 経由でこのホストに到達できませんでした。
error-usage-wsl-host-unsupported = WSL ディストリビューションには Windows からのみ到達できます。
