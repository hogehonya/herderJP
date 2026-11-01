# Why adding, saving, removing, or discovering a device failed.
# $status is how Herdr's command exited, in the system's words; $detail is
# what it printed.

error-devices-adding = このホストは別の「デバイスを追加」ダイアログまたは実行中の「セットアップ」ワークスペースで追加中です。完了または閉じてから再試行してください。
error-devices-exists = このホストとセッションはすでに「{ $label }」として保存されています。
error-devices-remove = デバイスの削除に失敗しました（{ $status }）
error-devices-remove-detail = デバイスの削除に失敗しました（{ $status }）: { $detail }
error-devices-rename = デバイス名の変更に失敗しました（{ $status }）
error-devices-rename-detail = デバイス名の変更に失敗しました（{ $status }）: { $detail }
error-devices-server-restart = このホストの Herdr サーバーは、SSH 接続が切断されると存続しない可能性がある方法で起動されているため、デバイスを保存する前に Herdr が再起動する必要があります。再起動するとそこで実行中のペインが停止します。
error-devices-setup = デバイスの保存に失敗しました（{ $status }）
error-devices-setup-detail = デバイスの保存に失敗しました（{ $status }）: { $detail }
error-devices-setup-no-profile = このデバイスには保存されたプロファイルがありません。
error-devices-setup-label = デバイス名は制御文字を含まず最大 128 バイトです。
error-devices-setup-target = user@hostname や SSH エイリアスなどの SSH ターゲットを入力してください。
error-devices-setup-session = セッション名は英字、数字、ドット、アンダースコア、ハイフン（最大 64 バイト）を使用し、「.」と「..」は除きます。
error-devices-setup-state-directory = Herdr UI に状態ディレクトリがありません。
error-devices-setup-paths = セットアップパスは UTF-8 である必要があります。
error-devices-setup-windows = Windows ではターミナルでのデバイスセットアップを利用できません。
error-devices-setup-timeout = デバイスの保存がタイムアウトしました
error-devices-tailscale-json = Tailscale が読み取れないステータスを返しました: { $error }
error-devices-tailscale-timeout = Tailscale が時間内に応答しませんでした
