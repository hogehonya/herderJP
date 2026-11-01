# Why a Teleport move, which carries a worktree, its tabs, and its agents to
# another computer, could not finish. $host is a computer's name, $path a
# folder on it, $branch a Git branch, and $agent an agent's name, such as
# Claude Code. $error is the failure underneath.

error-remote-teleport-script = { $step ->
    [discover] 一致するリポジトリの検索に失敗しました: { $error }
    [review] 移動のレビューに失敗しました: { $error }
    [clone] リポジトリの宛先へのコピーに失敗しました: { $error }
    [open] 宛先でのリポジトリのオープンに失敗しました: { $error }
    [handoff] エージェントへの引き継ぎノートの依頼に失敗しました: { $error }
    [capture] コミットと変更のキャプチャに失敗しました: { $error }
    [transfer] 変更の宛先へのコピーに失敗しました: { $error }
    [fetch] 宛先でのブランチのフェッチに失敗しました: { $error }
    [create-worktree] 宛先ワークツリーの作成に失敗しました: { $error }
    [restore] 未コミット変更の復元に失敗しました: { $error }
    [tabs] タブの再作成に失敗しました: { $error }
    [retire] ソースワークスペースのプログラム停止に失敗しました: { $error }
    [credentials] 宛先への GitHub 認証情報のインストールに失敗しました: { $error }
    [sessions] エージェントセッションの移動に失敗しました: { $error }
   *[launch] プログラムの起動に失敗しました: { $error }
}
error-remote-teleport-decode = { $step ->
    [discover] 一致するリポジトリの検索に失敗しました: 予期しない出力
    [review] 移動のレビューに失敗しました: 予期しない出力
    [clone] リポジトリの宛先へのコピーに失敗しました: 予期しない出力
    [open] 宛先でのリポジトリのオープンに失敗しました: 予期しない出力
    [handoff] エージェントへの引き継ぎノートの依頼に失敗しました: 予期しない出力
    [capture] コミットと変更のキャプチャに失敗しました: 予期しない出力
    [transfer] 変更の宛先へのコピーに失敗しました: 予期しない出力
    [fetch] 宛先でのブランチのフェッチに失敗しました: 予期しない出力
    [create-worktree] 宛先ワークツリーの作成に失敗しました: 予期しない出力
    [restore] 未コミット変更の復元に失敗しました: 予期しない出力
    [tabs] タブの再作成に失敗しました: 予期しない出力
    [retire] ソースワークスペースのプログラム停止に失敗しました: 予期しない出力
    [credentials] 宛先への GitHub 認証情報のインストールに失敗しました: 予期しない出力
    [sessions] エージェントセッションの移動に失敗しました: 予期しない出力
   *[launch] プログラムの起動に失敗しました: 予期しない出力
}
error-remote-teleport-unsupported-host = Teleport にはローカルセッション、SSH ホスト、またはクラウドデバイスが必要です。カスタムソケットと WSL エンドポイントはサポートされていません
error-remote-teleport-development-session = ホストスクリプトは開発（--dev）セッションに到達できません
error-remote-teleport-workspace-gone = ワークスペースはホスト上でもう開かれていません
error-remote-teleport-pane-gone = ペインはホスト上でもう開かれていません
error-remote-teleport-repository-not-open = { $host } でリポジトリが開かれていません
error-remote-teleport-source-moved = レビュー以降、ここのチェックアウトに新しいコミットがあります。移動を再度レビューしてください
error-remote-teleport-outside-checkout = ペインは { $path } にあり、ワークスペースのチェックアウト外です。先に戻ってください
error-remote-teleport-destination-directory-missing = 宛先にディレクトリ { $path } がありません。移動する前にそこで作成してください（ファイルはコピーされません）
error-remote-teleport-outside-home = ペインは { $path } にあり、ホストのホームディレクトリ外です。ホームからの相対ディレクトリのみ移動できます
error-remote-teleport-session-agent-working = エージェントが作業中です。アイドルになってから移動してください。
error-remote-teleport-session-cwd-unavailable = ペインの作業ディレクトリを読み取れませんでした
error-remote-teleport-session-not-started = { $host } で { $agent } が起動しませんでした。ここのペインは実行を続けます
error-remote-teleport-session-program-missing = { $host } に { $agent } がインストールされていません。セッションのみの移動には同じエージェントが必要です
error-remote-teleport-session-required = Git リポジトリなしで移動できるのは、転送可能なセッションを持つエージェントのみです
error-remote-teleport-session-workspace-left-behind = { $error }。新しいワークスペース { $workspace } を閉じられませんでした
error-remote-teleport-source-session-changed = レビュー以降、ペインのセッションまたはディレクトリが変更されました。移動を再度レビューしてください
error-remote-teleport-worker-stopped = この移動を実行していたワーカーが完了前に停止しました
error-remote-teleport-space-gone = ワークスペースは { $host } でもう開かれていません
error-remote-teleport-space-changed = { $path } のワークスペースに未コミットの変更があります。先にそこでコミットまたはスタッシュしてください
error-remote-teleport-space-diverged = ワークスペースは { $branch } にあり、このペインのコミットはそれを継続しません
error-remote-teleport-left-behind = { $error }。{ $path } の新しいワークツリーを削除できませんでした
error-remote-teleport-no-commit = { $reference } はソース上のコミットを指定していません
error-remote-teleport-detached-head = チェックアウトはブランチ上にありません（デタッチ HEAD）
error-remote-teleport-branch-diverged = ブランチ { $branch } は宛先にすでに存在し、このチェックアウトにないコミットがあります
error-remote-teleport-branch-checked-out = ブランチ { $branch } は宛先の { $path } ですでにチェックアウトされています
error-remote-teleport-session-missing = ソースホストに { $agent } のセッションファイルが見つかりませんでした
error-remote-teleport-local-file = ローカルの一時ファイルを使用できませんでした
error-remote-teleport-invalid-token = GitHub CLI が予期しないトークンを返しました
error-remote-teleport-cancelled = Teleport がキャンセルされました
