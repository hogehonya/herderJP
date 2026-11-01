# The GitHub sign-in page of the account menu: the device's own account,
# saved SSH devices' accounts, and additional accounts. A letter in
# parentheses is the key that presses the button.

github-menu-host-own = { $device } のプルリクエストはこのアカウントを使用します。
github-menu-host-main = { $device } のプルリクエストはメインアカウント @{ $login } を使用します。このデバイスに別のアカウントを使用するにはサインインしてください。
github-menu-host-signed-out = { $device } のプルリクエストを表示するにはサインインしてください。
github-menu-connected-cli = GitHub CLI で接続済み
github-menu-connected = 接続済み
github-menu-copy-code-step = 1. ワンタイムコードをコピー
github-menu-copied = コピーしました
github-menu-copy-code = コードをコピー
github-menu-paste-code-step = 2. GitHub を開いてコードを貼り付け
github-menu-checking = GitHub アカウントを確認中...
github-menu-ready = アカウントはプルリクエストの検索に使用できます。
github-menu-cli-available = このコンピューターでは GitHub CLI がサインインしています。そのセッションを使用するか、ブラウザで安全にサインインしてください。
github-menu-sign-in-note = プルリクエストを表示するには、ブラウザで安全にサインインしてください。GitHub CLI は不要です。
github-menu-approve-key = { $label } (R)
github-menu-open = GitHub を開く (O)
github-menu-use-cli = GitHub CLI 認証を使用 (G)
github-menu-try-again = 再試行 (S)
github-menu-use-another = 別のアカウントを使用 (S)
github-menu-sign-in-browser = ブラウザでサインイン (S)
github-menu-sign-in = サインイン (S)
github-menu-use-token = トークンを使用 (T)
github-menu-add-account = アカウントを追加 (A)
github-menu-save-token = トークンを保存 (Enter)
github-menu-cancel-token = キャンセル (Esc)
github-menu-remove-account = アカウントを削除 (D)
github-menu-stop-cli = GitHub CLI の使用を停止 (D)
github-menu-sign-out = サインアウト (D)
github-menu-cli-no-repo-scope = GitHub CLI のトークンに repo スコープがないため、プライベートリポジトリを利用できません。`gh auth refresh --scopes repo` を実行してください。
github-menu-cli-session = このアプリセッションでは GitHub CLI のサインインを使用しています。このプラットフォームには選択を記憶する認証情報ストアがありません。
github-menu-cli-keeps-token = GitHub CLI がこのトークンを保持します。Herdr UI は何も保存しません。`gh auth logout` の後、このアプリは次回の確認時にサインアウトします。

github-menu-too-many-accounts = 追加できる GitHub アカウントは最大 { $count } 個です。
github-menu-main-account = メインアカウント
github-menu-new-account = 新しいアカウント
github-menu-add-account-chip = ＋ アカウントを追加 (A)
github-menu-account-note = メインアカウントからは見えないリポジトリ（Enterprise Managed User など）を表示できるアカウントにサインインします。そのログインと組織が所有するリポジトリを読み取り、それ以外はメインアカウントを使用します。Enterprise Managed User は Herdr の GitHub App をインストールできないため、パーソナルアクセストークンを使用してください。
github-menu-account-owners = { $owners } が所有するリポジトリを読み取ります。それ以外はすべてメインアカウントを使用します。[github] accounts で所有者を追加してください。
github-menu-token-label = パーソナルアクセストークン
github-menu-token-help = このアカウントとして github.com/settings/tokens で作成します: repo と read:org を持つクラシックトークン、または Contents、Issues、Pull requests の読み取りアクセスを持つ fine-grained トークンです。GitHub で確認された後、ブラウザのサインインと同様に保存されます。

github-menu-install-title = GitHub App をインストール
github-menu-install-body = Herdr の GitHub App が @{ $login } またはどの組織にもインストールされていないため、公開リポジトリのみ読み込まれます。インストールして、読み取りを許可するリポジトリを選択してください。
github-menu-install-custom-body = oauth_client_id として設定された GitHub App が @{ $login } またはどの組織にもインストールされていないため、公開リポジトリのみ読み込まれます。その App の GitHub ページからインストールしてください。
github-menu-install-link = GitHub でインストール
github-menu-approve-title = GitHub App の権限を承認
github-menu-approve-body = { $count ->
        [one] Herdr の GitHub App が新しい権限を要求しています。承認されるまで、そこのプライベートリポジトリではチェックの表示、プルリクエストの作成、コメント、マージができません。
       *[other] Herdr の GitHub App が新しい権限を要求しています。承認されるまで、そこのプライベートリポジトリではチェックの表示、プルリクエストの作成、コメント、マージができません。
    }
github-menu-approve-own = @{ $owner } として承認
github-menu-approve-organization = { $owner } として承認（その所有者が必要）
github-menu-attention-toast = { $body } タイトルバーのアバターから GitHub ページを開いてください。
github-menu-more-owners = さらに { $count } 件が GitHub にあります。
github-menu-recheck-note = このページを開いてからしばらくすると Herdr が再確認し、アバターのドットが消えます。
github-menu-token-placeholder = github_pat_… または ghp_…
