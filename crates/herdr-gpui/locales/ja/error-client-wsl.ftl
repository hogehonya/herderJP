# Failures reaching or managing a WSL (Windows Subsystem for Linux)
# distribution. wsl.exe and wslpath are Windows commands. $path is a file or
# folder dropped on a WSL terminal.

error-client-wsl-catalog = サポートされていない WSL デバイスリストのバージョン、サイズ、またはエントリです
error-client-wsl-catalog-schema = 無効な WSL デバイスリストスキーマです
error-client-wsl-closed = WSL ブリッジが閉じました。ディストリビューションが起動し、Herdr がインストールされていることを確認してください
error-client-wsl-command = wsl.exe が失敗しました（{ $status }）
error-client-wsl-host-exists = この WSL ディストリビューションはすでにデバイスです
error-client-wsl-host-missing = この WSL ディストリビューションは保存されたデバイスではありません
error-client-wsl-invalid-distro = 無効な WSL ディストリビューション名です
error-client-wsl-path-invalid = { $path } は WSL ディストリビューションがマップできる絶対 Windows パスではありません
error-client-wsl-path-limit = WSL ディストリビューションは一度に最大 256 個のドロップされたパスを受け取ります
error-client-wsl-path-response = wslpath からの無効な応答です
error-client-wsl-path-unmapped = { $path } はこの WSL ディストリビューションから到達できません。到達できるのは自身のファイルとマウントされたドライブのみです
error-client-wsl-timeout = WSL が時間内に応答しませんでした。ディストリビューションが停止しているか、セットアップを待っている可能性があります
error-client-wsl-unsupported = WSL ディストリビューションは Windows でのみ利用できます
