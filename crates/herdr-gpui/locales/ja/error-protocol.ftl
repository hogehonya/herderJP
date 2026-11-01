# Failures reading or writing the daemon's wire protocol: a frame is one
# message on the connection, a surface is a pane's screen contents, and a
# patch or delta updates one. $error is the decoder's own diagnostic.

error-protocol-cell-count = セル数がフレームの寸法と一致しません
error-protocol-clipboard-image-extension = サポートされていないクリップボード画像拡張子です
error-protocol-clipboard-image-size = クリップボード画像は 1 バイトから 16 MiB までである必要があります
error-protocol-clipboard-image-target = クリップボード画像のターゲットは 1～1024 バイトである必要があります
error-protocol-cursor-bounds = カーソルがフレーム外にあります
error-protocol-decode = フレームのデコードに失敗しました: { $error }
error-protocol-delta-grid-limit = サーフェスデルタのグリッドが上限を超えています
error-protocol-delta-metadata-cells = サーフェスデルタのメタデータにセルが含まれています
error-protocol-delta-popup = サーフェスデルタのポップアップ更新がポップアップと一致しません
error-protocol-delta-span = サーフェスデルタのスパンがグリッド外、未ソート、または予算超過です
error-protocol-empty-frame = 空のフレームです
error-protocol-encode = フレームのエンコードに失敗しました: { $error }
error-protocol-encoding-json = 無効なサーフェスエンコーディング JSON です: { $error }
error-protocol-encoding-limit = サーフェスエンコーディングがフレーム上限を超えています
error-protocol-encoding-payload = 無効なサーフェスエンコーディングペイロードです: { $error }
error-protocol-frame-limit = フレームが上限を超えています
error-protocol-hyperlink-index = 無効なハイパーリンクインデックスです
error-protocol-io = プロトコル I/O に失敗しました: { $error }
error-protocol-patch-cursor-bounds = パッチのカーソルがフレーム外にあります
error-protocol-patch-geometry = サーフェスパッチがペインのジオメトリを変更しました
error-protocol-patch-identity = サーフェスパッチの ID が一致しません
error-protocol-patch-row-bounds = サーフェスパッチの行がフレーム外にあります
error-protocol-scroll-bounds = サーフェスのスクロール領域がフレーム外または別の領域と重なっています
error-protocol-scroll-count = サーフェスのスクロール数が無効です
error-protocol-scroll-payload = サーフェスのスクロールにペインパッチが含まれていません
error-protocol-scroll-truncated = サーフェスのスクロールが切り詰められています
error-protocol-surface-baseline = サーフェス更新がベースラインと一致しません
error-protocol-trailing-bytes = フレームの末尾に余分なバイトがあります
