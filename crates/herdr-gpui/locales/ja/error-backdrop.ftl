# The window's background picture. backdrop.opacity and backdrop.image are
# config keys. $path is the picture's file; $error is the system's or the
# image decoder's text.

error-backdrop-decode = 背景画像 { $path } をデコードできませんでした: { $error }
error-backdrop-empty-image = backdrop.image を空にすることはできません
error-backdrop-image-path-encoding = backdrop.image は UTF-8 パスである必要があります
error-backdrop-not-a-file = 背景画像 { $path } は通常ファイルではありません
error-backdrop-opacity = backdrop.opacity は有限で 0 から 1 の間である必要があります
error-backdrop-read = 背景画像 { $path } を読み取れませんでした: { $error }
error-backdrop-relative-image = backdrop.image は絶対パスか ~/ で始まる必要があります
error-backdrop-too-large = 背景画像 { $path } が { $limit } バイトの上限を超えています
