# Why launch at login could not be turned on or off (Windows).
# herdr-gpui-launcher.exe is a file name.

error-launch-at-login-no-launcher = ログイン時に起動するには、{ $path } にあるアプリの隣に herdr-gpui-launcher.exe が必要です
error-launch-at-login-current-exe = 実行中の実行ファイルが見つかりませんでした
error-launch-at-login-registry = { $operation ->
    [open] スタートアップエントリを開けませんでした
    [read] スタートアップエントリを読み取れませんでした
    [write] スタートアップエントリを書き込めませんでした
   *[remove] スタートアップエントリを削除できませんでした
}
