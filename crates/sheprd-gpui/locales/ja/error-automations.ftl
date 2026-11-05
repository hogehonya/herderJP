# Failures reading or driving herdr-automate, the automation program, on a
# host. $host is a host's name; $path is an automation script's path on it.

error-automations-approved = { $path } は { $host } ですでに承認されています
error-automations-json = herdr-automate がこのアプリで読み取れない出力を出力しました
error-automations-missing = herdr-automate がこのホストにインストールされていません
error-automations-no-build = このアプリには { $platform } 用の herdr-automate ビルドがありません
error-automations-no-script = { $host } に自動化スクリプト { $path } がありません
error-automations-not-read = { $host } はまだ読み取られていません。しばらくしてから再試行してください
error-automations-off = Herdr UI で自動化がオフになっています: 設定、サイドバー、自動化を表示
error-automations-protocol = このホストの herdr-automate はレポートプロトコル { $found } を使用しています。このアプリは { $expected } を読み取ります。このアプリを更新してください。
error-automations-refused = herdr-automate: { $error }
error-automations-run = herdr-automate を実行できませんでした: { $error }
error-automations-unknown-host = { $host } という名前の接続済みホストはありません
error-automations-unknown-version = このアプリに同梱されている herdr-automate のバージョンを読み取れないため、インストールできません
error-automations-unsupported-host = 自動化はこの種類のホストに到達できません
