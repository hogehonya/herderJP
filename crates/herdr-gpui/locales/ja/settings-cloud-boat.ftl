# Settings > Cloud devices > Boat. Sandbox, machine, and organization
# names come from Boat and stay as they are.

settings-cloud-boat-note = Boat サンドボックスを作成してデバイスとして使用します。Herdr は GUI 所有の SSH キーを認可し、Boat の認証済み API から各マシンのホストキーを固定します。
settings-cloud-boat-not-configured = 未設定です。API URL を確認し、API キーを追加して保存してください。
settings-cloud-boat-sandboxes = 接続済み。キーは { $count } 個のサンドボックスを認識しています。
settings-cloud-boat-sandboxes-at-least = 接続済み。キーは { $count } 個以上のサンドボックスを認識しています。
settings-cloud-boat-key-environment = HERDR_BOAT_API_KEY で設定されており、こちらが優先されます。
settings-cloud-boat-key-missing = まだ保存されていません。Boat ダッシュボードの API Keys で作成してください。

settings-cloud-boat-api-url = API URL
settings-cloud-boat-organization = 組織
settings-cloud-boat-organization-placeholder = 任意。空の場合はアクティブな個人または組織のウォレット
settings-cloud-boat-machine-type = マシンタイプ
settings-cloud-boat-machine-type-placeholder = 任意: small、default、large、xlarge
settings-cloud-boat-environment = 環境
settings-cloud-boat-environment-placeholder = 任意。空の場合はアカウントのデフォルト環境
settings-cloud-boat-auto-stop = 自動停止まで
settings-cloud-boat-auto-stop-placeholder = never、または 1～2592000 秒
settings-cloud-boat-auto-stop-note = 自動停止を無効にするには never を使用します: Boat でサンドボックスを停止するまで課金が続きます。数値を指定すると固定の期限が設定され、SSH 作業中も適用されます（トライアルでは 1～7200 秒が必要）。作成時と再開時に適用されます。実行中のデバイスでは、保存してから「セットアップを完了」で今から延長するか自動停止を無効にしてください。

settings-cloud-boat-new-note = 生成された名前でサンドボックスを作成します。デバイスはセットアップ前に保存されるため、中断しても別のサンドボックスを作成せずに再試行できます。
settings-cloud-boat-recover = 作成を復旧
settings-cloud-boat-pending = 保留中の作成: { $name }。作成を復旧すると、再起動後も元のリクエストとオプションを再利用します。復旧は 23 時間後に期限切れになり、代替を黙って作成することはありません。
settings-cloud-boat-forget-pending = 保留中のリクエストを忘れる…
settings-cloud-boat-forget-pending-confirm = Boat を確認しました。リクエストを忘れる
settings-cloud-boat-forget-pending-warning = 先に Boat ダッシュボードを確認してください: 元のサンドボックスが存在し、まだ課金されている可能性があります。忘れるとこのローカルリクエストのみ削除されます。再度作成すると 2 つ目のサンドボックスが作成される可能性があります。
settings-cloud-boat-devices = Boat デバイス
settings-cloud-boat-devices-note = セットアップを完了するとサンドボックスを再利用し、自動停止までを今から適用して、期限付きの期限を延長するか無効にします。上のインストールスイッチもここに適用されます。セットアップスクリプトは再実行されません。
