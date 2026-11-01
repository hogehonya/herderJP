# Failures reading or saving a sign-in (GitHub, a cloud provider) in the
# system keyring or the private credential file. Keep config keys and
# values (allow_plaintext_credentials = true, [github], [coder]) and the
# environment variables GH_TOKEN and GITHUB_TOKEN as they are.

error-credentials-encoding = GitHub 認証情報のエンコーディングが無効です。
error-credentials-io = プライベート認証情報ファイルにアクセスできません。
error-credentials-keychain-read = GitHub Keychain エントリを読み取れません。ログイン Keychain をロック解除するか、GH_TOKEN を設定してください。
error-credentials-keychain-write = GitHub Keychain の更新に失敗しました。ログイン Keychain をロック解除して再試行してください。
error-credentials-permissions = プライベート認証情報ファイルにアクセスできません。所有ディレクトリと通常の 0600 ファイルが必要です。シンボリックリンクは拒否されます。
error-credentials-policy = 安全な認証情報ストアが設定されていません。[github] または [coder] テーブルで allow_plaintext_credentials = true を明示的に指定するか、GitHub には GH_TOKEN / GITHUB_TOKEN を使用してください。
error-credentials-secret-service-read = デスクトップキーリングから GitHub サインインを読み取れません。キーリングをロック解除するか、GH_TOKEN を設定してください。
error-credentials-secret-service-unavailable = デスクトップキーリング（Secret Service）が実行されていません。GNOME Keyring、KWallet、または KeePassXC を起動するか、[github] allow_plaintext_credentials = true を設定するか、GH_TOKEN / GITHUB_TOKEN を使用してください。
error-credentials-secret-service-write = GitHub キーリングの更新に失敗しました。デスクトップキーリングをロック解除して再試行してください。
error-credentials-unsupported = このプラットフォームでは GitHub 認証情報ストアを利用できません。GH_TOKEN / GITHUB_TOKEN を使用してください。

error-credentials-credential-manager-read = Windows Credential Manager から保存されたサインインを読み取れません。再度サインインするか、GitHub には GH_TOKEN を設定してください。
error-credentials-credential-manager-write = Windows Credential Manager の更新に失敗しました。再試行してください。
