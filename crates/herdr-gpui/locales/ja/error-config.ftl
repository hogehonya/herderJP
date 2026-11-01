# Settings that could not be loaded, checked, or edited. Words such as
# theme, chat.max_width, or devices.<id> are config keys and tables, written
# as the config file writes them. $table is a config table such as font,
# terminal_font, or zen; $error is the failure underneath.

error-config-device-theme = devices.{ $device }.theme: { $error }
error-config-empty-font-fallback = { $table }.fallback のファミリーは空にできません
error-config-empty-font-family = { $table }.family は空にできません
error-config-empty-theme = theme は空にできません
error-config-invalid-chat-width = chat.max_width は 0（全幅）または 320～4000 論理ピクセルである必要があります
error-config-invalid-code-table = code は TOML テーブルである必要があります
error-config-invalid-device-id = devices.{ $device } は保存されたデバイス ID ではありません
error-config-invalid-devices-table = devices と各 devices.<id> はテーブルである必要があります
error-config-invalid-favorite-themes = favorite_themes はテーマ名のリストである必要があります
error-config-invalid-font-size = { $table }.size は有限で 8～48 論理ピクセルの範囲である必要があります
error-config-invalid-font-weight = { $table }.weight は「medium」などのウェイト名、または 100～900 の数値である必要があります
error-config-invalid-host-color = sidebar.hosts.{ $host } は #rgb または #rrggbb の色である必要があります（{ $value } ではありません）
error-config-invalid-line-height = { $table }.line_height はフォントサイズの 1～2 倍の有限数である必要があります
error-config-invalid-sidebar-gap = layout.sidebar_gap は有限で 0～64 論理ピクセルの範囲である必要があります
error-config-invalid-sidebar-metric = sidebar.{ $key } は有限で 0～{ $max } 論理ピクセルの範囲である必要があります
error-config-invalid-sound-volume = sound.volume は 0～100 の範囲である必要があります
error-config-invalid-terminal-padding = terminal.{ $key } は 1 つの数値または数値のペアで、それぞれ有限で 0～64 論理ピクセルの範囲である必要があります
error-config-invalid-theme-pair = システムに追従するテーマは両側を指定する必要があります: light:NAME,dark:NAME
error-config-invalid-theme-path = theme は名前、絶対パス、または ~/ パスである必要があります
error-config-invalid-usage-table = usage は TOML テーブルである必要があります
error-config-invalid-zen-font-size = zen.font_size は有限で 8～48 論理ピクセルの範囲である必要があります
error-config-invalid-zen-width = zen.width は 20～1000 列、または「10%」～「100%」のパーセンテージである必要があります
error-config-key-not-table = { $key }: このキーの一部がテーブルではなく値を持っています。先にその部分を解除してください
error-config-migration-conflict = { $original } を移行できません: { $local } にはすでに異なる設定が含まれています。古い設定をローカルファイルにマージしてから古い設定を削除してください。再生成されます。
error-config-preferences-not-object = preferences はオブジェクトである必要があります
error-config-theme-line = 行 { $line }: { $key }: { $error }
error-config-theme-not-found = テーマ { $name } が { $directories } に見つかりません
error-config-too-many-devices = [devices] は最大 { $limit } 台のデバイスを一覧表示できます
error-config-too-many-font-fallbacks = { $table }.fallback は最大 8 ファミリーを一覧表示できます
error-config-unknown-keys = Herdr UI に設定 { $keys } はありません。config-gpui.toml にすべての設定が記載されています
error-config-unknown-layout = 不明なサイドバーレイアウト { $name }

error-config-theme-parse-invalid-color = 6 桁の RGB 16 進色（任意で # 接頭辞）を期待していました
error-config-theme-parse-invalid-hex = 無効な 16 進色です
error-config-theme-parse-missing-palette-color = index=color を期待していました
error-config-theme-parse-palette-index = パレットインデックスは 0～255 の範囲である必要があります

error-config-ssh-invalid-table = ssh はテーブル、ssh.skip_host_key_verification は SSH ターゲットのリストである必要があります
error-config-ssh-invalid-target = ssh.skip_host_key_verification: { $target } は SSH ターゲットではありません
error-config-ssh-too-many = ssh.skip_host_key_verification は最大 { $limit } 台のホストを一覧表示できます

error-config-tab-layout-unknown = 不明なタブレイアウト { $name }
