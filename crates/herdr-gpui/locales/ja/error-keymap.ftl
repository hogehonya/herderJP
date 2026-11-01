# Keybindings that could not be used. keybindings and pane_keys are config
# tables; cmd, ctrl, alt, and fn are modifier key names. $keystroke is a key
# as the config writes it, quoted, such as "cmd-t". $command is a command's
# config name, such as new_tab.

error-keymap-duplicate-keystroke = keybindings: { $keystroke } は { $first } と { $second } の両方に割り当てられています
error-keymap-duplicate-pane-key = pane_keys: { $keystroke } が 2 回記載されています
error-keymap-empty-pane-key-text = pane_keys.{ $keystroke }: text: に送信する内容が必要です
error-keymap-invalid-keystroke = keybindings.{ $command }: 無効なキーストローク { $keystroke } です
error-keymap-invalid-pane-key = pane_keys: 無効なキーストローク { $keystroke } です
error-keymap-keystroke-without-modifier = keybindings.{ $command }: { $keystroke } には cmd、ctrl、alt、または fn 修飾キーが必要です。そうしないと入力がターミナルに届きません
error-keymap-pane-key-bound = pane_keys: { $keystroke } は keybindings.{ $command } にも割り当てられています
error-keymap-pane-key-text-too-long = pane_keys.{ $keystroke }: text は最大 { $limit } バイトです
error-keymap-pane-key-without-modifier = pane_keys: { $keystroke } には cmd、ctrl、alt、または fn 修飾キーが必要です。そうしないと入力がターミナルに届きません
error-keymap-too-many-keystrokes = keybindings.{ $command } は最大 8 個のキーストロークを一覧表示できます
error-keymap-too-many-pane-keys = pane_keys は最大 { $limit } 個のキーストロークを一覧表示できます
error-keymap-unknown-keybinding = keybindings.{ $command } はコマンドではありません。config-gpui.toml の keybindings リストを参照してください
error-keymap-unsendable-pane-key = pane_keys.{ $from }: ペインは { $to } を受信できません

error-keymap-daemon-missing = ホストがキーバインドを公開しませんでした
error-keymap-daemon-no-keys = ホストのキーバインドに [keys] テーブルがありません
error-keymap-daemon-parse = ホストのキーバインドが有効な TOML ではありません: { $error }
error-keymap-daemon-too-large = ホストのキーバインドが { $max } バイトを超えています
