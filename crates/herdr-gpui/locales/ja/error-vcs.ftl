# Git on the checkouts the app shows: commits, pushes, checkpoints, and the
# code search index. Git's own output stays as it is in $details.

error-vcs-cloud-host-unsupported = これはクラウドマシンではまだ利用できません。

error-vcs-checkpoint-branch = そのチェックポイントは別のブランチで作成されました。復元するにはそのブランチをチェックアウトしてください。
error-vcs-checkpoint-busy = マージ、リベース、チェリーピック、またはリバートが進行中です。先に完了または中止してください。
error-vcs-checkpoint-checkout = このブランチのチェックアウトがホスト上に見つかりませんでした。
error-vcs-checkpoint-missing = そのチェックポイントはもう存在しません。
error-vcs-checkpoint-output = チェックポイントの出力を理解できませんでした。
error-vcs-checkpoint-script = チェックポイントの Git コマンドが失敗しました
error-vcs-checkpoint-thread = チェックポイントワーカーを開始できませんでした
error-vcs-checkpoint-unborn = このチェックアウトにはまだコミットがないため、チェックポイントがありません。
error-vcs-checkpoint-worker = チェックポイントワーカーが停止しました。

error-vcs-code-index-cancelled = チェックアウトの読み取りがキャンセルされました
error-vcs-code-index-root = ファイルとシンボルを検索できるのはローカル Git チェックアウトのみです

error-vcs-git-busy = Git 操作がすでに実行中です。
error-vcs-git-commit-message = 最大 4096 文字のコミットメッセージを入力してください。
error-vcs-git-failed = { $kind ->
    [check-uncommitted] git の未コミットファイルの確認に失敗しました: { $details }
    [check-unpushed] git の未プッシュコミットの確認に失敗しました: { $details }
    [commit] git commit に失敗しました: { $details }
    [count-changes] git の変更数のカウントに失敗しました: { $details }
    [count-working-tree] git の作業ツリー変更数のカウントに失敗しました: { $details }
    [fetch-pull-request] git のプルリクエストブランチのフェッチに失敗しました: { $details }
    [find-branch-start] git のブランチ開始位置の検索に失敗しました: { $details }
    [find-checkout] git のチェックアウトの検索に失敗しました: { $details }
    [list-attribute-files] git の属性ファイルの一覧表示に失敗しました: { $details }
    [list-branches] git のブランチ一覧表示に失敗しました: { $details }
    [list-files] git のファイル一覧表示に失敗しました: { $details }
    [list-untracked] git の未追跡ファイル一覧表示に失敗しました: { $details }
    [list-working-tree] git の作業ツリー変更一覧表示に失敗しました: { $details }
    [prepare-remote-checkout] git のリモートプルリクエストまたは Issue チェックアウトの準備に失敗しました: { $details }
    [push] git push に失敗しました: { $details }
    [read-attributes] git の属性読み取りに失敗しました: { $details }
    [read-commit-subject] git のコミット件名の読み取りに失敗しました: { $details }
    [read-default-branch] git のリモート既定ブランチの読み取りに失敗しました: { $details }
    [read-head] git の HEAD 読み取りに失敗しました: { $details }
    [read-new-commit] git の新しいコミットの読み取りに失敗しました: { $details }
    [read-working-tree-changes] git の作業ツリー変更の読み取りに失敗しました: { $details }
    [read-working-tree-state] git の作業ツリー状態の読み取りに失敗しました: { $details }
    [stage] git の変更ステージに失敗しました: { $details }
   *[other] git { $operation } に失敗しました: { $details }
}
error-vcs-git-no-checkout = フォーカスされたローカルチェックアウトがありません。
error-vcs-git-nothing-to-commit = コミットするものがありません: チェックアウトに変更はありません。
error-vcs-git-process = { $kind ->
    [start-worker] Git ワーカーを開始できませんでした。
   *[other] { $operation } を実行できませんでした。
}
error-vcs-git-pull-request-base = このブランチはリポジトリの既定ブランチです。ここからプルリクエストは開けません。
error-vcs-git-pull-request-title = ブランチに説明するコミットがありません。プルリクエストを開く前にコミットしてください。
error-vcs-git-worker = Git ワーカーが停止しました。操作を再試行してください。
