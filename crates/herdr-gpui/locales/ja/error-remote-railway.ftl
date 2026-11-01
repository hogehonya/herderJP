# Railway VMs as cloud devices, reached with an SSH key this app creates or
# the person picks. $path is the SSH private key's file. $detail is Railway's
# own text, kept as it is.

error-remote-railway-keygen-missing = Railway デバイスには PATH 上の ssh-keygen が必要です。実行できませんでした。
error-remote-railway-keygen = ssh-keygen がキーを作成または読み取れませんでした（終了ステータス { $status }）。
error-remote-railway-keygen-timeout = ssh-keygen が 30 秒以内に完了しませんでした。
error-remote-railway-unusable-key = { $path } は使用可能な SSH 秘密キーではありません。パスフレーズで保護されたキーには隣に .pub ファイルが必要で、SSH エージェントに読み込まれている必要があります。
error-remote-railway-key-name = 英字、数字、ドット、アンダースコア、ハイフンを 1～64 文字使用し、ドットまたはハイフンで始まらず、.pub で終わらない名前にしてください。
error-remote-railway-key-exists = { $path } はすでに存在します。Herdr はキーを決して置き換えません。別の名前を選択してください。
error-remote-railway-key-path = SSH 秘密キーへの絶対パスを選択してください。
error-remote-railway-key-file = キーファイル { $path } を使用できませんでした。
error-remote-railway-store = { $path } を更新できませんでした。
error-remote-railway-no-identity = このデバイスには保存されたキーパスがありません。削除して再セットアップしてください。
error-remote-railway-key-missing = このデバイスの SSH キーがありません: { $path }。新しいキーに置き換えられることはありません。復元するか、デバイスを削除してください。
error-remote-railway-key-changed = { $path } のキーはこのデバイスのセットアップ時のものではないため、使用されませんでした。そのキーを復元するか、デバイスを削除して再セットアップしてください。
error-remote-railway-public-key-mismatch = { $path } の隣の公開キーが秘密キーと一致しません。接続する前に一致する .pub ファイルを復元してください。
error-remote-railway-terminal = Railway VM を作成するターミナルを開けませんでした。
error-remote-railway-terminal-unsupported = VM の作成にはターミナルが必要ですが、この Herdr のビルドでは開けません。
error-remote-railway-create-timeout = Railway が 90 秒以内に VM の作成を完了しませんでした。
error-remote-railway-create-refused = Railway がこのキー用の VM を作成しませんでした: { $detail }
error-remote-railway-unreachable = railway.new に到達できませんでした: { $detail }
