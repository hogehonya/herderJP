# A pane's menu, from a right-click on the pane or its agent's sidebar row,
# and its pages: rename, move, move to another device, and processes.

pane-menu-rename = 名前を変更
pane-menu-split-right = 右に分割
pane-menu-split-down = 下に分割
pane-menu-swap = フォーカス中のペインと入れ替え
pane-menu-unzoom = ズーム解除
pane-menu-zoom = ズーム
pane-menu-move-to-new-tab = 新しいタブへ移動
pane-menu-move-to-new-workspace = 新しいワークスペースへ移動
pane-menu-move-to = 移動先…
pane-menu-edit-scrollback = スクロールバックをエディタで開く
pane-menu-right-click-menu = 右クリックでこのメニューを開く
pane-menu-right-click-pane = 右クリックをペインに送る
pane-menu-processes = プロセス
pane-menu-close = 閉じる

pane-menu-rename-placeholder = ペイン名（空欄で解除）
pane-menu-rename-title = ペインの名前を変更
pane-menu-rename-hint = カスタムラベルを解除するには空欄にしてください。
pane-menu-cancel = キャンセル
pane-menu-renaming = 名前を変更中...
pane-menu-rename-submit = 名前を変更

pane-menu-moving = ペインを移動中…
pane-menu-move-heading = ペインの移動先
pane-menu-new-tab = 新しいタブ
pane-menu-new-workspace = 新しいワークスペース

pane-menu-carry-session-only = エージェントセッションのみ
pane-menu-carry-new-worktree = 新しいワークツリー
pane-menu-carry-checking = エージェントセッションとホームディレクトリを確認中…
pane-menu-carry-failed = ペインの移動に失敗しました: { $error }
pane-menu-carry-moved = { $destination } に移動しました
pane-menu-carry-moved-warnings = { $count } 件の警告付きで { $destination } に移動しました: { $first }
pane-menu-carry-title = ペインを { $destination } に移動
pane-menu-carry-reviewing = 移動先とペインのプログラムを確認中…
pane-menu-carry-move = 移動
pane-menu-carry-session-cwd = { $directory } に新しいワークスペース
pane-menu-carry-session-note = 移動するのはエージェントセッションのみです。ファイルはコピーされません。
pane-menu-carry-closes = そこで実行されると、ここのペインは閉じます。
pane-menu-carry-branch = 新しいワークツリーのブランチ { $branch }
pane-menu-carry-branch-in-use = そこで使用中の { $branch } から新しいブランチ
pane-menu-carry-branch-commit = このコミットから新しいブランチ
pane-menu-carry-tab-fast-forward = { $checkout } に新しいタブ（先にこのコミットまで fast-forward）
pane-menu-carry-tab = { $checkout } に新しいタブ
pane-menu-carry-into = { $repository } へ
pane-menu-carry-state = 未プッシュコミット { $unpushed } 件、変更ファイル { $changed } 件、未追跡 { $untracked } 件
pane-menu-carry-copied = 変更はコピーされます: このチェックアウトにも残ります。そこで実行されると、ここのペインは閉じます。
pane-menu-carry-starting = 開始中
pane-menu-carry-keeps-going = このメニューを閉じても移動は停止しません。
pane-menu-carry-moving = 移動中…
pane-menu-carry-close = 閉じる

pane-menu-processes-title = プロセス
pane-menu-processes-in = { $pane } のプロセス
pane-menu-processes-total = { $cpu } · { $memory }
pane-menu-processes-megabytes = { $size } MB
pane-menu-processes-gigabytes = { $size } GB
pane-menu-processes-listing = プロセスを一覧表示中…
pane-menu-processes-foreground = フォアグラウンド
pane-menu-processes-hidden = さらに { $count } 件非表示
pane-menu-processes-ending = プロセスを終了中…
pane-menu-processes-end = { $count ->
        [0] プロセスを終了…
       *[other] { $count } 個のプロセスを終了…
    }
pane-menu-processes-confirm-title = { $count } 個のプロセスを終了しますか？
pane-menu-processes-pid = PID { $pid }
pane-menu-processes-confirm-note = 各プロセスに終了を要求し（SIGTERM）、未保存の作業が失われる可能性があります。選択しなければ、それらが起動したプロセスは実行を続けます。
pane-menu-processes-cancel = キャンセル
pane-menu-processes-confirm = { $count } 個のプロセスを終了
pane-menu-processes-signalled = { $count } 個のプロセスに終了を要求しました。
pane-menu-processes-exited = { $count } 件はすでに終了していました。
pane-menu-processes-moved = { $count } 件はこのペインの下になくなり、実行を続けています。
pane-menu-processes-failed = { $count } 件にシグナルを送れませんでした。
