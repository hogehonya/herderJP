# Azure VM and sandbox sizes in Settings > Cloud devices. vCPU is a count of
# virtual processors; GiB is binary gigabytes. Size names such as
# Standard_D2pds_v6 come from Azure and stay as they are.

azure-sizes-gib = { $gib } GiB
azure-sizes-vm = { $cores } vCPU · { $memory } · { $arch }
azure-sizes-arch = { $arch ->
        [arm] Arm
       *[x64] x64
    }
azure-sizes-sandbox = { $cores } vCPU · { $memory }
azure-sizes-hourly = ${ $amount }/時
azure-sizes-hourly-monthly = ${ $amount }/時 · 約${ $monthly }/月
azure-sizes-device-vm = { $size } · { $spec } · { $spot ->
        [yes] Spot
       *[no] 通常価格
    }
azure-sizes-device-vm-unlisted = { $size } · { $spot ->
        [yes] Spot
       *[no] 通常価格
    }
