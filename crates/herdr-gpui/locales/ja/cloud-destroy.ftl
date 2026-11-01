# Asking before destroying the saved cloud devices a command named.
# $provider is a cloud provider, such as Azure; $machine is what it calls one
# machine, such as VM or workspace; $leftovers is what else the provider
# deletes with it, as the provider words it.

cloud-destroy-failed = { $total } 個のクラウドデバイスのうち { $failed } 個を破棄できませんでした。{ $device }: { $error }
cloud-destroy-unknown-error = 不明なエラー
cloud-destroy-title = { $count } 個のデバイスを破棄しますか？
cloud-destroy-note = コマンドからの要求です。ファイルは保持されず、この操作は元に戻せません。
cloud-destroy-cancel = キャンセル
cloud-destroy-submit = { $count } 個のデバイスを破棄
cloud-destroy-delete = { $provider } の { $machine } を削除し{ $leftovers }、Herdr から削除します
cloud-destroy-forget = Herdr からのみ削除します。{ $provider } の { $machine } はここから削除できません
