# The dialogs a workspace row's popover opens: rename, new and open
# worktree, new tab and workspace, note, close, and delete. $workspace,
# $host, and $branch are names; $machine is a new cloud machine, such as
# "a new Docker sandbox".

workspace-dialog-rename-title = ワークスペースの名前を変更
workspace-dialog-rename = 名前を変更
workspace-dialog-rename-note = ワークスペースのラベルを編集します。
workspace-dialog-new-worktree-title = 新しいワークツリー
workspace-dialog-open-worktree-title = ワークツリーを開く
workspace-dialog-open = 開く
workspace-dialog-new-tab-title = 新しいタブ
workspace-dialog-new-tab-note = タブに名前を付けるか、提案を残して Herdr に番号を付けさせます。
workspace-dialog-new-workspace-title = 新しいワークスペース
workspace-dialog-new-workspace-note = ワークスペースに名前を付けるか、提案を残して Herdr に名前を付けさせます。
workspace-dialog-note-title = ノート
workspace-dialog-note-note = このアプリ内のこのチェックアウトとブランチにのみ保持されるリマインダーです。空にして保存すると削除されます。
workspace-dialog-save = 保存
workspace-dialog-force-delete-title = チェックアウトを強制削除しますか？
workspace-dialog-force-remove = 強制削除
workspace-dialog-delete-title = ワークツリーチェックアウトを削除しますか？
workspace-dialog-remove = 削除
workspace-dialog-create = 作成
workspace-dialog-create-on = { $host } で作成
workspace-dialog-create-in = { $machine } で作成
workspace-dialog-cancel = キャンセル
workspace-dialog-waiting = 待機中...
workspace-dialog-waiting-spoken = 待機中

workspace-dialog-opens-on = { $host } でリポジトリのメインチェックアウトを開きます。
workspace-dialog-opens-on-clone = 先にリポジトリをクローンしてから、{ $host } でリポジトリのメインチェックアウトを開きます。
workspace-dialog-opens-in = { $machine } を作成し、そこにリポジトリをクローンして開きます。

workspace-dialog-close-note = { $count ->
        [one] { $count } 個のワークスペースを閉じ、実行中のターミナルを終了します。チェックアウトのファイルとブランチは削除されません。
       *[other] { $count } 個のワークスペースを閉じ、実行中のターミナルを終了します。チェックアウトのファイルとブランチは削除されません。
    }

workspace-dialog-name = 名前
workspace-dialog-branch = ブランチ
workspace-dialog-creates-on = { $host } に { $base } からワークツリーを作成します。リポジトリの信頼は付与しません:
workspace-dialog-creates-on-clone = 先にリポジトリをクローンしてから、{ $host } に { $base } からワークツリーを作成します。リポジトリの信頼は付与しません:
workspace-dialog-creates-in = { $machine } を作成し、先にリポジトリをクローンしてから、そこに { $base } からワークツリーを作成します。リポジトリの信頼は付与しません:
workspace-dialog-creates-here = { $base } からこのフォルダを作成します。リポジトリの信頼は付与しません:
workspace-dialog-daemon-names = デーモンがチェックアウトを指定します。
workspace-dialog-daemon-chooses = デーモンがチェックアウトを選択します。
workspace-dialog-host-chooses = { $host } のデーモンがチェックアウトを選択します。
workspace-dialog-its-daemon-chooses = そのデーモンがチェックアウトを選択します。

workspace-dialog-merged = プルリクエスト #{ $number } はマージされました。
workspace-dialog-force-removes = このチェックアウトフォルダを強制削除します:
workspace-dialog-removes = このチェックアウトフォルダを削除します:
workspace-dialog-path-pending = デーモンがチェックアウトを指定するのを待っています...
workspace-dialog-force-note = 変更されたファイルと未追跡ファイル（サブモジュールの内容を含む）は破棄されます。ブランチは削除されません。Herdr ワークスペースは閉じます。
workspace-dialog-delete-note = ブランチは削除されません。Herdr ワークスペースは閉じます。
workspace-dialog-archive-checking = アーカイブスクリプトを確認中...
workspace-dialog-archive-failed = アーカイブスクリプトを実行できません: { $error }
workspace-dialog-archive-trusted = リポジトリのアーカイブスクリプトが先に新しいタブで実行されます。成功した場合のみチェックアウトが削除されます。
workspace-dialog-archive-untrusted = リポジトリにアーカイブスクリプトがあります。何かが実行される前に確認できます。

workspace-dialog-job-waiting = { $status } 閉じてもキャンセルされません。
workspace-dialog-daemon-waiting = デーモンを待っています。閉じてもキャンセルされません。

workspace-dialog-remove-failed = ワークツリーを削除: { $error }
workspace-dialog-unexpected = デーモンから予期しない応答がありました。再試行する前に現在のワークスペース状態を確認してください。
workspace-dialog-setup-failed = セットアップスクリプトが開始しませんでした: { $error }
