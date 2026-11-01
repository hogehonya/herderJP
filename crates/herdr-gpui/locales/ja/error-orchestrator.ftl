# The orchestrator: its issue and pull request records, their database,
# and the agents it starts. Database, Git, GitLab, and system text stays as
# it is in $error.

error-orchestrator-bead-id = Bead ID { $id } は bd が受け入れる形式ではありません
error-orchestrator-beads-missing = このホストに Beads がインストールされていません（bd が見つかりませんでした）
error-orchestrator-busy = 複数のアクションがすでに実行中です。1 つ完了してから再試行してください
error-orchestrator-cancelled = キャンセルされました
error-orchestrator-database = オーケストレーターのデータベースに失敗しました: { $error }
error-orchestrator-failed = { $kind ->
    [create-worktree] ワークツリーの作成に失敗しました: { $error }
    [discover-agents] インストール済みエージェントの検出に失敗しました: { $error }
    [name-pane] エージェントペインの命名に失敗しました: { $error }
    [name-tab] エージェントタブの命名に失敗しました: { $error }
    [open-repository] リポジトリのオープンに失敗しました: { $error }
    [read-base-commit] ベースコミットの読み取りに失敗しました: { $error }
    [read-bd-options] bd のオプションの読み取りに失敗しました: { $error }
    [read-beads] Beads の読み取りに失敗しました: { $error }
    [read-beads-blockers] Beads のブロッカーの読み取りに失敗しました: { $error }
    [read-branches] ブランチの読み取りに失敗しました: { $error }
    [read-checks] プルリクエストチェックの読み取りに失敗しました: { $error }
    [read-github] GitHub の読み取りに失敗しました: { $error }
    [read-repository] リポジトリの読み取りに失敗しました: { $error }
    [read-workspaces] ワークスペースの読み取りに失敗しました: { $error }
    [remove-worktree] ワークツリーの削除に失敗しました: { $error }
    [resolve-beads-folder] Beads フォルダの解決に失敗しました: { $error }
    [send-message] メッセージの送信に失敗しました: { $error }
    [send-prompt] プロンプトの送信に失敗しました: { $error }
    [start-agent] エージェントの起動に失敗しました: { $error }
    [stop-agent] エージェントの停止に失敗しました: { $error }
   *[other] { $operation } に失敗しました: { $error }
}
error-orchestrator-host-cannot-take = そのホストはこのリポジトリを受け取れません
error-orchestrator-host-not-shown = 他のホストへディスパッチするには、このリポジトリのホストを表示してください
error-orchestrator-invalid-checkout = 保存されたオーケストレータータブが絶対パスではないフォルダを指定しています
error-orchestrator-item-key = アイテムキーではありません: { $key }
error-orchestrator-json = 保存された { $column } は有効な JSON ではありません: { $error }
error-orchestrator-menu-open = 先に開いているメニューを閉じてください
error-orchestrator-newer-schema = 共有データはスキーマ { $found } です。この herdr-gpui は最大 { $known } を理解します。更新されるまで読み取り専用です。
error-orchestrator-no-data-directory = オーケストレーターの状態用の状態ディレクトリがありません
error-orchestrator-not-a-repository = このフォルダは Git リポジトリ内にありません
error-orchestrator-not-owner = 実行 { $run } は別のアプリケーションに属しています
error-orchestrator-not-web-address = ここでは Web アドレスのみ開けます
error-orchestrator-nothing-to-open = この実行には表示できる Herdr ワークスペースがありません
error-orchestrator-output = { $kind ->
    [create-worktree] ワークツリーの作成が予期しない出力を返しました
    [discover-agents] インストール済みエージェントの検出が予期しない出力を返しました
    [name-pane] エージェントペインの命名が予期しない出力を返しました
    [name-tab] エージェントタブの命名が予期しない出力を返しました
    [open-repository] リポジトリのオープンが予期しない出力を返しました
    [read-base-commit] ベースコミットの読み取りが予期しない出力を返しました
    [read-bd-options] bd のオプションの読み取りが予期しない出力を返しました
    [read-beads] Beads の読み取りが予期しない出力を返しました
    [read-beads-blockers] Beads のブロッカーの読み取りが予期しない出力を返しました
    [read-branches] ブランチの読み取りが予期しない出力を返しました
    [read-checks] プルリクエストチェックの読み取りが予期しない出力を返しました
    [read-github] GitHub の読み取りが予期しない出力を返しました
    [read-repository] リポジトリの読み取りが予期しない出力を返しました
    [read-workspaces] ワークスペースの読み取りが予期しない出力を返しました
    [remove-worktree] ワークツリーの削除が予期しない出力を返しました
    [resolve-beads-folder] Beads フォルダの解決が予期しない出力を返しました
    [send-message] メッセージの送信が予期しない出力を返しました
    [send-prompt] プロンプトの送信が予期しない出力を返しました
    [start-agent] エージェントの起動が予期しない出力を返しました
    [stop-agent] エージェントの停止が予期しない出力を返しました
   *[other] { $operation } が予期しない出力を返しました
}
error-orchestrator-output-json = { $kind ->
    [create-worktree] ワークツリーの作成が無効な JSON を返しました: { $error }
    [discover-agents] インストール済みエージェントの検出が無効な JSON を返しました: { $error }
    [name-pane] エージェントペインの命名が無効な JSON を返しました: { $error }
    [name-tab] エージェントタブの命名が無効な JSON を返しました: { $error }
    [open-repository] リポジトリのオープンが無効な JSON を返しました: { $error }
    [read-base-commit] ベースコミットの読み取りが無効な JSON を返しました: { $error }
    [read-bd-options] bd のオプションの読み取りが無効な JSON を返しました: { $error }
    [read-beads] Beads の読み取りが無効な JSON を返しました: { $error }
    [read-beads-blockers] Beads のブロッカーの読み取りが無効な JSON を返しました: { $error }
    [read-branches] ブランチの読み取りが無効な JSON を返しました: { $error }
    [read-checks] プルリクエストチェックの読み取りが無効な JSON を返しました: { $error }
    [read-github] GitHub の読み取りが無効な JSON を返しました: { $error }
    [read-repository] リポジトリの読み取りが無効な JSON を返しました: { $error }
    [read-workspaces] ワークスペースの読み取りが無効な JSON を返しました: { $error }
    [remove-worktree] ワークツリーの削除が無効な JSON を返しました: { $error }
    [resolve-beads-folder] Beads フォルダの解決が無効な JSON を返しました: { $error }
    [send-message] メッセージの送信が無効な JSON を返しました: { $error }
    [send-prompt] プロンプトの送信が無効な JSON を返しました: { $error }
    [start-agent] エージェントの起動が無効な JSON を返しました: { $error }
    [stop-agent] エージェントの停止が無効な JSON を返しました: { $error }
   *[other] { $operation } が無効な JSON を返しました: { $error }
}
error-orchestrator-owner = 不明な実行所有者 { $owner } です
error-orchestrator-provider = 不明な Issue プロバイダー { $provider } です
error-orchestrator-pull-request-changed = 確認してからプルリクエストが変更されました。マージする前に再度確認してください
error-orchestrator-remote-url = リモート URL { $url } はリポジトリを指定していません
error-orchestrator-run-not-found = 実行 { $run } が見つかりませんでした
error-orchestrator-teleport = 他のホストのセットアップに失敗しました: { $error }
error-orchestrator-time = 保存された { $column } は有効な時刻ではありません: { $value }
error-orchestrator-unsupported-host = このホストではオーケストレーターのスクリプトを実行できません
error-orchestrator-worker = オーケストレーターのワーカーを開始できませんでした: { $error }
error-orchestrator-workspace-closed = この実行のワークスペースは閉じられています

error-orchestrator-private-not-private = { $path } はこのユーザーが所有するプライベートファイルまたはディレクトリではありません
error-orchestrator-private-prepare = { $path } を準備できませんでした: { $error }

error-orchestrator-gitlab-address = { $host } の GitLab アドレスが無効です
error-orchestrator-gitlab-authentication = GitLab がトークンを拒否しました。右上のアカウントボタンから置き換えてください
error-orchestrator-gitlab-code-expired = GitLab サインインコードの有効期限が切れました。再度接続してください
error-orchestrator-gitlab-denied = GitLab のサインインが拒否されました
error-orchestrator-gitlab-directory = 保存された GitLab トークン用フォルダが見つかりませんでした: { $error }
error-orchestrator-gitlab-environment-refused = GitLab が GITLAB_TOKEN を拒否しました。アプリに保存されたトークンより先に試されるため、変更または解除してください
error-orchestrator-gitlab-envrc-refused = GitLab がこのチェックアウトの .envrc が設定する GITLAB_TOKEN を拒否しました。最初に試されるため、そこで変更してください
error-orchestrator-gitlab-forbidden = GitLab が { $repository } へのアクセスを拒否しました。トークンには read_api スコープが必要です
error-orchestrator-gitlab-host = { $host } は GitLab ホスト名ではありません
error-orchestrator-gitlab-insecure-host = { $host } の GitLab は平文 HTTP で読み取られ、トークンは HTTPS 経由でのみ送信されます。https:// のリモートを使用してください
error-orchestrator-gitlab-insecure-remote = GitLab はサインイン時のみ { $repository } を表示し、トークンは平文 HTTP で送信されません。https:// のリモートを使用してください
error-orchestrator-gitlab-json = GitLab の回答が期待される JSON ではありません: { $error }
error-orchestrator-gitlab-network = { $origin } で GitLab に到達できませんでした: { $error }
error-orchestrator-gitlab-no-keyring = GitLab トークンを保存するデスクトップキーリングが実行されていません。GNOME Keyring、KWallet、または KeePassXC を起動するか、[gitlab] allow_plaintext_credentials = true を設定するか、GITLAB_TOKEN を使用してください
error-orchestrator-gitlab-no-store = GitLab トークンを保存できる安全な認証情報ストアがありません。[gitlab] allow_plaintext_credentials = true を設定するか、GITLAB_TOKEN を使用してください
error-orchestrator-gitlab-not-found = このトークンに対して GitLab はプロジェクト { $repository } を表示しません
error-orchestrator-gitlab-rate-limit = GitLab のレート制限に達しました。後で再度読み取ります
error-orchestrator-gitlab-read = GitLab の回答を読み取れませんでした: { $error }
error-orchestrator-gitlab-record = 保存された GitLab トークンが期待される形式ではありません
error-orchestrator-gitlab-scope = GitLab がトークンのアクセスを拒否しました。read_api スコープが必要です
error-orchestrator-gitlab-sign-in = GitLab はサインイン時のみ { $repository } を表示します。右上のアカウントボタンからトークンを追加してください
error-orchestrator-gitlab-size = GitLab の回答がサイズ上限を超えました
error-orchestrator-gitlab-status = GitLab リクエストが失敗しました（HTTP { $status }）
error-orchestrator-gitlab-store = GitLab トークンを読み取れなかったか保存できませんでした: { $error }
error-orchestrator-gitlab-token = GitLab トークンは HTTP ヘッダーで運べる形式ではありません
error-orchestrator-gitlab-too-many-hosts = GitLab トークンは最大 { $limit } 台のホスト用に保存されます
