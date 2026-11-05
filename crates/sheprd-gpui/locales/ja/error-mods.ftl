# Mods that could not run or be listed. $name is a mod's name, as its
# mod.toml gives it; `[mods] disabled` is a config table and key.

error-mods-busy = Mod { $name } に待機中のメッセージが多すぎます。再試行してください
error-mods-disabled-name = `[mods] disabled` に無効な名前 `{ $name }` があります
error-mods-not-running = { $name } という名前の Mod は実行されていません
error-mods-spawn = Mod { $name } 用のスレッドを開始できませんでした
error-mods-too-many-disabled = `[mods] disabled` が { $limit } 個を超える Mod を一覧表示しています
