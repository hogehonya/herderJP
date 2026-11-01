# A saved device's menu, from its sidebar host header, and its pages:
# rename, remove, forward a port, and the terminal theme.

host-menu-rename = 名前を変更…
host-menu-server-keybindings = サーバーのキーバインドを使用
host-menu-forward-port = ポートを転送…
host-menu-theme = ターミナルテーマ…
host-menu-remove = デバイスを削除…
host-menu-cloud-settings = クラウドデバイス設定…
host-menu-run-setup = セットアップスクリプトを実行
host-menu-local-keybindings = ローカルキーバインドを使用中: { $error }
host-menu-remove-failed = { $device } を削除: { $error }
host-menu-github-left = { $device } を削除しましたが、その GitHub サインインを削除できませんでした: { $error }

host-menu-remove-title = デバイスを削除
host-menu-remove-ssh-note = このコンピューターから { $device }（{ $target } · { $session }）を削除しますか？Herdr はそのホストで実行され続けます。
host-menu-remove-cloud-note = このコンピューターから { $device }（{ $target }）を削除しますか？{ $provider } { $machine } 自体はそのまま残ります。
host-menu-remove-github = このコンピューターからその GitHub サインインも削除する
host-menu-cancel = キャンセル
host-menu-remove-submit = 削除

host-menu-rename-title = デバイス名を変更
host-menu-close = 閉じる
host-menu-rename-name = 名前
host-menu-rename-submit = 名前を変更
host-menu-renaming = 名前を変更中…

host-menu-delete-checking = 確認中…
host-menu-delete-anyway = それでも削除
host-menu-delete = { $machine } を削除
host-menu-unsynced-checking = 未プッシュの作業がないか { $machine } を確認中…
host-menu-unsynced-failed = 未プッシュの作業がないか { $machine } を確認できませんでした。その上のものはすべて一緒に削除されます。
host-menu-unsynced-found = この { $machine } の作業はどこにもプッシュされていません:
host-menu-unsynced-changed = { $path }（変更されたファイル { $changed } 件）
host-menu-unsynced-unpushed = { $path }（未プッシュのコミット { $unpushed } 件）
host-menu-unsynced-both = { $path }（変更されたファイル { $changed } 件、未プッシュのコミット { $unpushed } 件）
host-menu-unsynced-more = さらに { $count } 件
host-menu-unsynced-advice = 削除する前にプッシュするか、別のデバイスに Teleport してください。
host-menu-delete-note = { $provider } の { $machine } { $device }（{ $target }）を削除し{ $leftovers }、このコンピューターから削除しますか？ファイルは保持されず、この操作は元に戻せません。
host-menu-remove-only = Herdr からのみ削除

host-menu-forwards = 転送中のポート
host-menu-forward-connecting = 接続中…
host-menu-forward-ended = 終了
host-menu-forward-open = 開く
host-menu-forward-dismiss = 閉じる
host-menu-forward-stop = 停止
host-menu-forward-title = ポートを転送
host-menu-forward-close = 閉じる
host-menu-forward-intro = { $device } 上のプログラムがリッスンするポートに、このコンピューターから SSH 経由で到達します。停止するまで転送が続きます。
host-menu-forward-remote-port = リモートポート
host-menu-forward-submit = 転送

host-menu-theme-title = ターミナルテーマ · { $device }
host-menu-theme-close = 閉じる
host-menu-theme-search = テーマを検索...
host-menu-theme-same-as-app = アプリと同じ
host-menu-theme-current = 現在
host-menu-theme-hover-hint = このデバイスのターミナルのみ変更されます。ホバーでプレビュー、Enter またはクリックで保存。
host-menu-theme-select-hint = このデバイスのターミナルのみ変更されます。デバイスを選択してプレビューしてください。
