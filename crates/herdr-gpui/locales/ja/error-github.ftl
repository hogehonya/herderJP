# GitHub failures: sign-in, its requests, the GitHub CLI, pull request
# lookups, and pull request actions. GitHub's own words, and the system's,
# stay as they are in $error and $reason.

error-github-authentication = GitHub の認証が必要です。メニューの GitHub サインインを使用するか、GH_TOKEN / GITHUB_TOKEN を設定してください。
error-github-authorization = GitHub の認可に失敗しました。OAuth アプリケーションの設定を確認してください。
error-github-client-id-encoding = HERDR_GITHUB_OAUTH_CLIENT_ID は UTF-8 である必要があります
error-github-denied = GitHub の認可が拒否されました。
error-github-device = GitHub デバイス認可の応答が無効です。
error-github-encoding = GitHub 認証情報のエンコーディングが無効です。
error-github-expired = GitHub コードの有効期限が切れました。再度サインインしてください。
error-github-forbidden = GitHub がアクセスを拒否しました。トークンの権限または SSO 認可を確認してください。
error-github-header = GitHub 認可ヘッダーが無効です。
error-github-invalid-client-id = { $key } は 1～256 文字の ASCII 英字、数字、「.」、「_」、「-」である必要があります（公開クライアント ID であり、シークレットではありません）
error-github-json = GitHub JSON 応答が無効です。
error-github-network = GitHub ネットワークリクエストが失敗またはタイムアウトしました（{ $error }）。
error-github-query = GitHub クエリに失敗しました。トークンのリポジトリ権限とレート制限を確認してください。
error-github-rate-limit = GitHub のレート制限に達しました。後で再試行してください。
error-github-rate-limit-until = GitHub のレート制限に達しました。{ $time } 以降に再試行してください。
error-github-read = GitHub 応答をサイズ/時間制限内に読み取れませんでした。
error-github-rejected = GitHub がリクエストを拒否しました: { $reason }
error-github-repository-hidden = { $sign_in ->
    [app] このサインインでは GitHub が { $repository } を認識できません。この GitHub App のサインインは App がインストールされたリポジトリにのみ到達します。リポジトリの所有者に対して App をインストールし、要求された権限を承認するか、GitHub ページで所有者アカウントを追加してください。
   *[token] このサインインでは GitHub が { $repository } を認識できません。リモート、トークンのリポジトリアクセス、SSO 認可を確認するか、GitHub ページで所有者アカウントを追加してください。
}
error-github-size = GitHub 応答がサイズ上限を超えました。
error-github-status = GitHub リクエストが失敗しました（HTTP { $status }）。ネットワークとリポジトリへのアクセスを確認してください。
error-github-token = GitHub トークンが無効です。設定された認証情報を置き換えてください。
error-github-token-type = サポートされていない GitHub トークンの種類です。
error-github-worker = { $kind ->
    [authentication] GitHub 認証ワーカーが停止しました。
    [list] GitHub リストワーカーが停止しました。
    [profile] GitHub プロファイルワーカーが停止しました。
   *[other] GitHub { $worker } ワーカーが停止しました。
}

## The [github] accounts config list. [github] and accounts are config names.

error-github-accounts-duplicate-id = [github] accounts に id { $id } が 2 回記載されています
error-github-accounts-id = [github] accounts の id は 32 桁の小文字 16 進数である必要があります
error-github-accounts-not-a-list = [github] accounts はアカウントテーブルのリストである必要があります
error-github-accounts-owner = [github] accounts の所有者 { $owner } は GitHub ユーザーまたは組織名ではありません
error-github-accounts-random = GitHub アカウント ID を生成できませんでした
error-github-accounts-too-many = [github] accounts は最大 { $limit } 個のアカウントを一覧表示できます

## The GitHub CLI (gh). `gh auth login` and `gh auth status` are commands.

error-github-cli-missing = GitHub CLI（gh）が見つかりませんでした。インストールして `gh auth login` を実行するか、ここでサインインしてください。
error-github-cli-process = GitHub CLI（gh）を実行できませんでした。
error-github-cli-rejected = GitHub が GitHub CLI のトークンを拒否しました。`gh auth login` を実行して更新してから、再試行してください。
error-github-cli-signed-out = GitHub CLI が github.com にサインインしていません。`gh auth login` を実行してから、再試行してください。
error-github-cli-timeout = GitHub CLI が 10 秒以内に応答しませんでした。`gh auth status` を確認してから、再試行してください。

## Finding a branch's pull request.

error-github-pull-request-absolute-path = デーモンが絶対チェックアウトとリポジトリキーを提供しませんでした。
error-github-pull-request-ambiguous = このブランチに一致する PR が複数あるため、PR は選択されていません。
error-github-pull-request-ambiguous-worktree = デーモンのブランチに一致するローカルワークツリーが複数あります。
error-github-pull-request-branch = サポートされているブランチがありません。
error-github-pull-request-branch-changed = チェックアウトのブランチが変更されました。デーモンのメタデータを待っています。
error-github-pull-request-cancelled = PR の検索がキャンセルされました。
error-github-pull-request-checkout = ローカルチェックアウトが利用できないか、信頼できる Git リポジトリではありません。
error-github-pull-request-encoding = 無効なプロセステキストです。
error-github-pull-request-identity = PR の ID がリポジトリとブランチに一致しません。
error-github-pull-request-metadata = リポジトリのメタデータがありません。
error-github-pull-request-missing-worktree = デーモンのブランチに一致するローカルワークツリーがありません。
error-github-pull-request-origin = PR の検索は GitHub.com のオリジンのみサポートしています。
error-github-pull-request-process = { $kind ->
    [configure-errors] Git PR 検索用のプロセスエラーを設定できませんでした。
    [configure-output] Git PR 検索用のプロセス出力を設定できませんでした。
    [create-channel] Git PR 検索用のプロセス出力チャネルを作成できませんでした。
    [launch-git] Git PR 検索用の Git を起動できませんでした（PATH に git をインストールしてください）。
    [read-output] Git PR 検索用のプロセス出力を読み取れませんでした。
    [wait] Git PR 検索用のプロセスを待機できませんでした。
   *[other] Git PR 検索用の { $operation } を実行できませんでした。
}
error-github-pull-request-repository = GitHub リポジトリを利用できません。リポジトリへのアクセスとトークン権限を確認してください。
error-github-pull-request-repository-mismatch = ローカルリポジトリがデーモンのメタデータと一致しません。
error-github-pull-request-size = PR 応答がサイズ上限を超えました。
error-github-pull-request-timeout = PR の検索がタイムアウトしました（15 秒）。
error-github-pull-request-untrusted-endpoint = PR の検索には、所有するローカルセッションソケットまたは保存された SSH デバイスが必要です。その他のソケットの場所はサポートされていません。
error-github-pull-request-workspace-repository = ワークスペースディレクトリが Git リポジトリ内にありません。
error-github-pull-request-worktree-lookup = ワークツリーの検索にローカルリポジトリを利用できません。

## Commenting on, merging, or reading reviews of a pull request.

error-github-pr-actions-busy = プルリクエストのアクションがすでに実行中です。
error-github-pr-actions-comment-body = 最大 4096 文字のコメントを入力してください。
error-github-pr-actions-merge-changed = このダイアログを開いてからブランチが変更されました。プルリクエストを再度確認してください。
error-github-pr-actions-merge-method = リポジトリはこのマージ方法を許可していません。
error-github-pr-actions-process = プルリクエストワーカーを開始できませんでした。
error-github-pr-actions-target = このプルリクエストはここでは操作できません。オープンでないか、詳細が不完全です。更新して再試行してください。
error-github-pr-actions-worker = プルリクエストワーカーが停止しました。再試行する前に GitHub でプルリクエストを確認してください。
