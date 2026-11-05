# The app's own failures, shown in a window, a dialog, or a notification,
# often inside another message's $error. $error is the failure underneath:
# a message of its own, or text from the system or a parser, kept as it is.
# $path is a file or folder.

error-agent-context = { $operation ->
    [create] 新しいチェックアウトのエージェントコンテキストノートを作成できませんでした。
   *[write] 新しいチェックアウトのエージェントコンテキストノートを書き込めませんでした。
}
error-bonjour = ローカルネットワークの検索に失敗しました: { $error }
error-bundle-exists = { $path } はすでに存在します。新しいファイル名を選択してください
error-bundle-write = { $path } を書き込めませんでした: { $error }
error-cleanup = { $error }。{ $path } を削除中: { $cleanup }
error-cloud-host-unsupported = これはクラウドマシンではまだ利用できません。
error-code-file-unreadable = このファイルは存在しないか、1 MiB を超えるか、UTF-8 テキストではありません
error-connection-busy = 接続はビジーです。もう一度お試しください。
error-connection-not-ready = 接続の準備ができていません。もう一度お試しください。
error-deletion-lookup = チェックアウトの検索に失敗しました。メニューを閉じて開き直してください。
error-detached-head = HEAD がデタッチされています。先にブランチをチェックアウトしてください。
error-empty-tab-name = タブ名を入力してください。
error-empty-workspace-label = ワークスペースのラベルは空にできません。
error-git-common-dir = { $path } で git を実行できませんでした: { $error }
error-github-secret-in-config = [github] { $key } を設定に含めないでください。アプリからサインインするか、GH_TOKEN / GITHUB_TOKEN を使用してください。
error-image-animation-resize = サイズの大きい GIF、WebP、アニメーション PNG 画像は安全にリサイズできません。
error-image-decode = サイズの大きい画像をデコードできませんでした。
error-image-decode-limit = 画像がリサイズのピクセル数またはデコード後メモリの上限を超えています。
error-image-encode = リサイズした画像をエンコードできませんでした。
error-image-file = { $operation ->
    [open] ローカル画像ファイルを開けませんでした。
    [inspect] ローカル画像ファイルを検査できませんでした。
   *[read] ローカル画像ファイルを読み取れませんでした。
}
error-image-file-type = ローカル画像は通常ファイルである必要があります。
error-image-format = SVG のクリップボード画像はサポートされていません。PNG、JPEG、GIF、WebP、BMP、または TIFF を使用してください。
error-image-input-too-large = 画像がリサイズ入力の { $limit } バイト上限を超えています。
error-image-read-timeout = ローカル画像の読み取りがタイムアウトしました（3 秒）。
error-image-size = 画像を空にすることはできません。
error-image-too-large = 画像が Herdr の { $limit } バイトのアップロード上限を超えています。
error-invalid-annotation = ページが無効な注釈を報告しました
error-invalid-branch-name = 無効な Git ブランチ名です。空白や特殊な ref 文字を含まない、config-reload のような名前を使用してください。
error-invalid-browser-tabs = 保存されたブラウザタブが無効です
error-invalid-browser-url = ブラウザタブはホストを持つ http および https アドレスのみ、最大 8 KiB で開けます。
error-invalid-code-file = コードタブは制御文字を含まない絶対ファイルパスを指定する必要があります
error-invalid-external-url = http、https、file 以外のスキームを持つアドレスではありません（最大 8 KiB）。
error-invalid-group-layouts = 保存されたエディタグループが無効です
error-invalid-local-page = ローカルページは、隠しフォルダではなく、ホームディレクトリを含まないフォルダ内の通常ファイルである必要があります。
error-invalid-review-checkout = 保存されたレビュータブが、ローカル絶対パスではないチェックアウトを指定しています。
error-invalid-sidebar-width = 無効なサイドバー幅
error-invalid-stored-width = sidebar_width_px は有限の正の値、または null である必要があります
error-invalid-window-state = 保存されたウィンドウジオメトリが無効か、保存されたウィンドウが多すぎます
error-invalid-worktree-notes = 保存されたワークツリーノートが無効です
error-linked-file-missing = ファイルが見つかりません: { $path }
error-link-on-another-host = このリンクは別のコンピューター { $host } 上のファイルを指しています。ここからは開きません。
error-local-addresses = このマシンのネットワークアドレスを一覧表示できませんでした: { $error }
error-local-git = Git を実行できませんでした
error-local-network-denied = macOS がローカルネットワークで Herdr を許可していません。システム設定 › プライバシーとセキュリティ › ローカルネットワークで Herdr をオンにしてから、再検索してください
error-local-worktree-note = ワークツリーノートはこのアプリ内に保持され、デーモンには送信されません
error-log-read = ログ { $path } を読み取れませんでした: { $error }
error-malformed-link = このリンクのアドレスが無効なため、何も開きません。
error-missing-deletion = 削除ダイアログを再度開いてください。
error-missing-home = HOME が設定されていません
error-missing-state-root = XDG_STATE_HOME も HOME も設定されていません
error-no-snapshot = 現在のデーモンスナップショットがありません。
error-no-tab = タブが選択されていません。
error-not-a-git-repository = { $path } は Git リポジトリ内にありません
error-not-connected = デーモンに接続されていません。
error-not-in-checkout = 現在のディレクトリは Git チェックアウト内にありません。
error-orchestrator-items = オーケストレーターのデータベースを読み取れませんでした: { $error }
error-page-stack = ウィンドウにページを配置するビューがありません
error-pane-image-decode = ペインが配置した画像をデコードできませんでした。
error-pane-image-limit = ペインが配置した画像がデコード後サイズの上限を超えています。
error-path = { $path }: { $error }
error-popup-opener = ポップアップを開いたページはもうウィンドウにありません
error-preferences-path = preferences パスに親がありません
error-relative-config-root = XDG_CONFIG_HOME は絶対パスである必要があります
error-remote-agent-tools = SSH ホストにエージェントツールをインストールできませんでした: { $error }
error-request = { $method }: { $error }
error-screenshot-image = ページの画像を PNG に変換できませんでした
error-screenshot-write = スクリーンショットを { $path } に書き込めませんでした: { $error }
error-selection-offscreen = 選択範囲がペインに表示されなくなった行に達しています。
error-selection-size = 選択範囲が大きすぎてコピーできません。
error-selection-stale = 選択したペインはもう画面にありません。
error-settings-save = 設定の保存を完了できませんでした: { $error }
error-skill-install = { $path } にエージェントスキルをインストールできませんでした: { $error }
error-ssh-config = { $path } を読み取れませんでした: { $error }
error-stale-close-target = 元のターゲットが変更されたか、存在しなくなりました。キャンセルして再試行してください。
error-stale-connection = 選択した接続が変更されたか、準備ができていません。キャンセルして再試行してください。
error-stale-pane = 元のペインが変更されたか、存在しなくなりました。キャンセルして再試行してください。
error-stale-tab = 元のタブが変更されたか、存在しなくなりました。キャンセルして再試行してください。
error-stale-workspace = ワークスペースはもう利用できません。メニューを閉じて開き直してください。
error-state-file-size = { $path } が { $limit } バイトを超えています
error-unsupported-command = このコマンドアクションはこのクライアントではサポートされていません。
error-web-view = ページを作成できませんでした: { $error }
error-window-handle = ページのネイティブウィンドウに到達できませんでした: { $error }
error-workspace-checkout-changed = チェックアウトが変更されました。メニューを閉じて開き直してください。
error-workspace-group-changed = ワークスペースグループが変更されました。メニューを閉じて、グループを再度確認してください。
error-workspace-repository-changed = リポジトリが変更されました。メニューを閉じて開き直してください。
error-worktree-list = ワークツリーリストが無効かサイズ超過です。メニューを閉じて開き直してください。
error-worktree-list-decode = ワークツリーリストの形式が正しくありません。メニューを閉じて開き直してください。
error-worktree-selection = デーモンのワークツリーリストからチェックアウトを選択してください。
