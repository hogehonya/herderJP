# Settings > Remote control: the daemon's switch and how it serves, pairing
# a phone, and the paired devices. Also the pane history switch Settings
# saves on each SSH host.

settings-remote-health-updating = サービスを更新中…
settings-remote-health-off = オフ。オンにすると、ネットワーク上で HTTPS、実行中は Tailscale 経由でチャットを提供するユーザーサービスがインストールされます。
settings-remote-health-starting = 起動中…
settings-remote-health-running = ポート { $port } で実行中 · { $devices } 台のデバイス、{ $connected } 台接続済み
settings-remote-health-running-alone = ポート { $port } で実行中 · { $devices } 台のデバイス、{ $connected } 台接続済み · Herdr は実行されていません
settings-remote-health-not-running = 実行されていません: { $reason }
settings-remote-service-failed = サービスを変更できませんでした: { $error }
settings-remote-revoke-failed = デバイスを取り消せませんでした: { $error }
settings-remote-retry = 再試行

settings-remote-section-service = サービス
settings-remote-keep-running-note = 電話は引き続き動作し、通知も届きます。新しいデバイスのペアリングには Herdr UI が必要です。
settings-remote-presence = ここにいる間は電話のアラートを保留
settings-remote-presence-note = このコンピューターの近くにあるペアリング済み iPhone は、離れるまでアラートを保留します。
settings-remote-restart = デーモンを再起動
settings-remote-restart-note = 更新後と同様に、Herdr UI の隣のバイナリから再起動します。電話は自動的に再接続します。
settings-remote-restart-button = 再起動

settings-remote-section-connection = 接続
settings-remote-bind-all = すべてのインターフェース
settings-remote-addresses-none = ネットワークアドレスが見つかりません。
settings-remote-while-running = リモート操作の実行中に表示されます。
settings-remote-certificate-own = 独自 CA
settings-remote-certificate-files = 自分のファイル
settings-remote-certificate-files-note = 独自ドメイン用など、自分の証明書とキー。
settings-remote-certificate-own-note = デーモン独自の証明機関で、電話で一度だけ信頼します。実行中はそのフィンガープリントが表示されます。
settings-remote-certificate-fingerprint = デーモン独自の証明機関で、電話で一度だけ信頼します。CA SHA-256 { $fingerprint }
settings-remote-files = 証明書ファイル
settings-remote-files-certificate = 証明書
settings-remote-files-key = 秘密キー
settings-remote-files-invalid = 両方のファイルを絶対パスで指定してください。
settings-remote-files-apply = これらのファイルを使用

settings-remote-section-notifications = 通知
settings-remote-notifications-note = 汎用では本文なしでどのチャットが対応を必要としているかを示します。抜粋ではメッセージの短い抜粋を追加します。
settings-remote-privacy-generic = 汎用
settings-remote-privacy-excerpt = 抜粋

settings-remote-section-devices = デバイス
settings-remote-idle-note = この期間接続しなかったデバイスは忘れられ、再度ペアリングが必要になります。
settings-remote-idle-day = 1 日
settings-remote-idle-week = 1 週間
settings-remote-idle-month = 1 か月
settings-remote-idle-never = なし
settings-remote-devices-none = ペアリング済みのデバイスはまだありません。
settings-remote-devices-count = { $count } 台のデバイスがチャットを操作できます。
settings-remote-device-revoke-ask = 取り消しますか？セッションは終了し、通知はここでも、ここからペアリングしたマシンでも直ちに停止します。
settings-remote-device-cancel = キャンセル
settings-remote-device-revoke = 取り消す
settings-remote-device-revoke-open = 取り消す…
settings-remote-device-revoke-confirm = 取り消しを確認

settings-remote-pair-off = リモート操作をオンにしてから、電話のカメラでコードをスキャンしてください。
settings-remote-pair-ready = 電話のカメラでコードをスキャンしてから、ここで電話を承認してください。
settings-remote-pair-connected = { $count } 台の電話が接続済みです。別の電話のカメラでコードをスキャンして追加してください。
settings-remote-pair-button = 電話をペアリング…
settings-remote-pair-no-window = デバイスをペアリングするには Herdr UI ウィンドウを開いてください。
settings-remote-pair-dialog-open = 開いているダイアログを閉じてから、デバイスをペアリングしてください。

settings-remote-history-reload-failed = 保存しました。ホストデーモンの再読み込みはキューに入りませんでした: { $error }
