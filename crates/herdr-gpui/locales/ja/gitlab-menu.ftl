# The account menu's GitLab page: each GitLab instance the Orchestrator
# reads, the token it is read with, and connecting or pasting one. $host is an
# instance's address, such as gitlab.com; $user a GitLab username.

gitlab-menu-close = 閉じる
gitlab-menu-no-store = このウィンドウは GitLab トークンを保持しません。

gitlab-menu-from-envrc-of = { $checkout } の .envrc から
gitlab-menu-from-envrc = プロジェクトの .envrc から
gitlab-menu-from-environment = GITLAB_TOKEN から
gitlab-menu-from-connected = ここで接続済み
gitlab-menu-from-saved = ここに保存済み
gitlab-menu-from-cli = GitLab CLI（glab）から

gitlab-menu-plain = 平文 HTTP で読み取るため、トークンは送信されません。プライベートプロジェクトには https:// のリモートを使用してください。
gitlab-menu-looking = トークンを探しています…
gitlab-menu-not-connected-note = 未接続です。公開プロジェクトは一覧表示されます。プライベートには接続してください。
gitlab-menu-no-token-note = トークンがありません。公開プロジェクトは一覧表示されます。プライベートにはプロジェクトの .envrc に GITLAB_TOKEN を設定するか、glab でサインインするか、トークンを貼り付けてください。
gitlab-menu-checking = { $from } のトークンを確認中…
gitlab-menu-signed-in = { $user } としてサインイン済み、{ $from }。
gitlab-menu-refused-connect = GitLab が { $from } のトークンを拒否しました。再度接続するか、新しいトークンを貼り付けてください。
gitlab-menu-refused = GitLab が { $from } のトークンを拒否しました。新しいトークンを貼り付けてください。
gitlab-menu-environment-refused = GitLab が GITLAB_TOKEN を拒否しました。シェルで変更または解除してください: ここに保存されたトークンはその後でのみ試されます。
gitlab-menu-envrc-refused = GitLab が { $from } のトークンを拒否しました。そこで変更してください: 最初に試されます。
gitlab-menu-failed = { $error }。トークンは { $from } です。
gitlab-menu-record-failed = { $error }。トークンを保存または忘れると置き換えられます。
gitlab-menu-paste-first = 先にパーソナルアクセストークンを貼り付けてください。
gitlab-menu-saved = 保存しました。{ $host } の GitLab はこのトークンを { $user } としてサインインします。
gitlab-menu-removed = { $host } 用に保持されていた GitLab サインインを削除しました。
gitlab-menu-connected = 接続しました。{ $host } の GitLab は { $user } としてサインインします。

gitlab-menu-connect-again = 再接続
gitlab-menu-connect = 接続
gitlab-menu-disconnect = 切断
gitlab-menu-forget = 忘れる

gitlab-menu-chip-connected = 接続済み
gitlab-menu-chip-saved = 保存済みトークン
gitlab-menu-chip-none = トークンなし
gitlab-menu-not-connected = 未接続
gitlab-menu-from-folder = { $checkout }/ から

gitlab-menu-connect-host = { $host } に接続
gitlab-menu-welcome-title = GitLab アカウントを接続
gitlab-menu-welcome-body = オーケストレーターは { $host } から Issue を読み取ります。公開プロジェクトはアカウントなしで一覧表示されます。プライベートには接続してください。
gitlab-menu-welcome-body-for = オーケストレーターは { $checkout } 用に { $host } から Issue を読み取ります。公開プロジェクトはアカウントなしで一覧表示されます。プライベートには接続してください。
gitlab-menu-also-read = 他に読み取る: { $hosts }
gitlab-menu-use-token-instead = 代わりにパーソナルアクセストークンを使用
gitlab-menu-paste-token = パーソナルアクセストークンを貼り付け
gitlab-menu-already-set-up = すでに設定済みですか？プロジェクトの .envrc またはシェルの GITLAB_TOKEN と glab は自動的に検出されます。

gitlab-menu-asking = GitLab にコードを要求中…
gitlab-menu-approve-code = GitLab でこのコードを承認してください:
gitlab-menu-open = GitLab を開く
gitlab-menu-copied = コピーしました
gitlab-menu-copy-code = コードをコピー
gitlab-menu-cancel = キャンセル
gitlab-menu-waiting = GitLab が承認するとこのページが更新されます。

gitlab-menu-form-note = Connect のないインスタンス用です。トークンには read_api スコープが必要です。保存前に GitLab にサインインユーザーを問い合わせます（常に HTTPS 経由）。プロジェクトの .envrc またはシェルの GITLAB_TOKEN が先に使用されます。
gitlab-menu-instance = インスタンス
gitlab-menu-token = パーソナルアクセストークン
gitlab-menu-paste-for-instance = インスタンス用のトークンを貼り付け…
gitlab-menu-form-cancel = キャンセル
gitlab-menu-check-and-save = 確認して保存
gitlab-menu-add-instance = ＋ インスタンスを追加
