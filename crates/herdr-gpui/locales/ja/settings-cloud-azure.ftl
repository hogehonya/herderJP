# Settings > Cloud devices > Azure. Size, region, group, and machine names
# come from Azure and the user and stay as they are. $kind is `vm` or
# `sandbox`, for what kind of machine a device is.

settings-cloud-azure-note = 1 つの Azure サブスクリプション内の VM と Container Apps サンドボックスをデバイスとして使用します。VM は SSH 経由、サンドボックスは Azure データプレーン経由で到達します。

settings-cloud-azure-subscription = サブスクリプション ID
settings-cloud-azure-subscription-placeholder = Azure サブスクリプション UUID
settings-cloud-azure-group = リソースグループ
settings-cloud-azure-group-placeholder = デフォルト: herdr-devices
settings-cloud-azure-location = 地域
settings-cloud-azure-location-placeholder = デフォルト: centralus
settings-cloud-azure-vm-size = VM サイズ
settings-cloud-azure-vm-size-placeholder = デフォルト: Standard_D2plds_v6
settings-cloud-azure-auto-stop = 自動停止
settings-cloud-azure-auto-stop-placeholder = never、またはアイドル VM が削除されるまでのアイドル時間（例: 30m、1h、2h）
settings-cloud-azure-tenant = テナント ID
settings-cloud-azure-tenant-placeholder = 任意の Service Principal テナント UUID
settings-cloud-azure-sandbox-group = サンドボックスグループ
settings-cloud-azure-sandbox-group-placeholder = デフォルト: herdr-sandboxes
settings-cloud-azure-sandbox-region = サンドボックス地域
settings-cloud-azure-sandbox-region-placeholder = デフォルト: 地域と同じ
settings-cloud-azure-sandbox-image = サンドボックスイメージ
settings-cloud-azure-sandbox-image-placeholder = 公開ディスクイメージ。デフォルト: ubuntu
settings-cloud-azure-client-id = クライアント ID
settings-cloud-azure-client-id-placeholder = 任意の Service Principal アプリケーション UUID
settings-cloud-azure-secret = クライアントシークレット
settings-cloud-azure-secret-placeholder = クライアントシークレット（マスク）

settings-cloud-azure-cli-detected = Azure CLI（`az`）を検出しました。サブスクリプション ID を入力するか、保存をクリックしてアクティブな CLI アカウントを使用してください。
settings-cloud-azure-not-configured = 未設定です。サブスクリプション ID と認証情報を入力して保存してください。
settings-cloud-azure-signed-in-cli = アクティブな Azure CLI（`az`）アカウントで認証済みです。
settings-cloud-azure-signed-in-secret = 保存された Service Principal クライアントシークレットで認証済みです。
settings-cloud-azure-signed-in-environment = HERDR_AZURE_CLIENT_SECRET で認証済みです。
settings-cloud-azure-credential-missing = サブスクリプションが設定されています。接続するにはクライアントシークレットを追加するか、`az` CLI にログインしてください。

settings-cloud-azure-new-vm = 新しい VM
settings-cloud-azure-create-vm = VM を作成
settings-cloud-azure-creating-vm = Azure VM { $name } を作成中。デバイスピッカーに進行状況が表示されます。
settings-cloud-azure-no-window-vm = VM を作成するにはメインの Herdr ウィンドウを開いてください。
settings-cloud-azure-new-sandbox = 新しいサンドボックス
settings-cloud-azure-create-sandbox = サンドボックスを作成
settings-cloud-azure-creating-sandbox = Azure サンドボックス { $name } を作成中。デバイスピッカーに進行状況が表示されます。
settings-cloud-azure-no-window-sandbox = サンドボックスを作成するにはメインの Herdr ウィンドウを開いてください。
settings-cloud-azure-vm-sizes-note = 新しい VM は OS ディスクを VM のローカルストレージに保持するため、ディスク課金はなく、自動停止はアイドル VM を削除します: 作業は Git に保持してください。Azure がサブスクリプションに提供する場合は Spot として実行され、容量が必要になると Azure が Spot VM を削除する可能性があります。それ以外は通常価格で課金されます。{ $location } の Linux 定価（米ドル、現在時点）: Spot 価格は変動します。
settings-cloud-azure-sizes-unknown = アカウントが保存され到達可能になると仕様と価格が表示されます。
settings-cloud-azure-size-no-local-disk = ローカルストレージなし: Standard SSD ディスク、削除されるまで課金
settings-cloud-azure-size-not-offered = { $location } では提供されていません
settings-cloud-azure-price-spot-regular = Spot { $spot } · 通常 { $regular }
settings-cloud-azure-price-spot = Spot { $spot }
settings-cloud-azure-price-regular = 通常 { $regular }
settings-cloud-azure-size-other = その他
settings-cloud-azure-size-other-detail = 地域が提供する任意のサイズ
settings-cloud-azure-size-use = サイズを使用
settings-cloud-azure-sandbox-sizes-note = 実行中は { $location } の Container Apps 料金で秒単位課金されます。一時停止中のサンドボックスには CPU やメモリの課金はありません。
settings-cloud-azure-sandbox-sizes-unknown = メモリは vCPU あたり 2 GiB、ディスクは 20 GiB です。
settings-cloud-azure-sandbox-size = { $size } · { $disk } GiB ディスク
settings-cloud-azure-sandbox-price = { $size } · { $disk } GiB ディスク · 実行中 { $price }
settings-cloud-azure-vcpu = { $cores } vCPU

settings-cloud-azure-devices = Azure デバイス
settings-cloud-azure-remove-note = デバイスを削除すると、Azure でもディスクと IP ごと削除されます。隣の「Herdr からのみ削除」は Azure に残し、課金は続きます。
settings-cloud-azure-device = { $kind ->
        [vm] { $group } の VM
       *[sandbox] { $group } のサンドボックス
    }
settings-cloud-azure-device-size = { $kind ->
        [vm] VM · { $group } の { $size }
       *[sandbox] サンドボックス · { $group } の { $size }
    }
settings-cloud-azure-delete = { $kind ->
        [vm] VM を削除
       *[sandbox] サンドボックスを削除
    }
settings-cloud-azure-delete-vm-warning = 削除すると VM { $name } はディスク、パブリック IP、ネットワークごと Azure からもここからも削除されます。ファイルは保持されず、この操作は元に戻せません。「Herdr からのみ削除」は Azure に残し、課金は続きます。
settings-cloud-azure-delete-sandbox-warning = 削除するとサンドボックス { $name } は Azure からもここからも削除されます。ファイルは保持されず、この操作は元に戻せません。「Herdr からのみ削除」は Azure に残し、課金は続きます。
settings-cloud-azure-destroy-contacting = Azure に接続中…
settings-cloud-azure-destroy-vm = VM とディスクを削除中…
settings-cloud-azure-destroy-leftovers = ネットワークと IP を削除中…
settings-cloud-azure-destroy-sandbox = サンドボックスを削除中…
