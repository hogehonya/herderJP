# Asking before creating the cloud machines a command asked for.
# $provider is a cloud provider, such as Coder; $kind is what it calls one
# machine, in English: machine, sandbox, workspace, container, VM, or sprite.

cloud-create-title = { $count } 個の { $provider } { $kind ->
        [machine] マシン
        [sandbox] サンドボックス
        [workspace] ワークスペース
        [container] コンテナ
        [VM] VM
        [sprite] スプライト
       *[other] { $kind }
    }を作成しますか？
cloud-create-template-preset = テンプレート { $template }、プリセット { $preset } から。
cloud-create-template-default-preset = テンプレート { $template }、デフォルトのプリセットから。
cloud-create-only-template-preset = デプロイメント唯一のテンプレート、プリセット { $preset } から。
cloud-create-only-template-default-preset = デプロイメント唯一のテンプレート、デフォルトのプリセットから。
cloud-create-install = Herdr がないマシンにはそれぞれインストールされます。
cloud-create-no-install = Herdr はインストールされません。ない場合は失敗します。
cloud-create-setup = 準備完了前に、それぞれで [cloud] セットアップスクリプトが実行されます。
cloud-create-no-setup = セットアップスクリプトは実行されません。
cloud-create-cost = コマンドからの要求です。破棄されるまで、{ $provider } がそれぞれに課金します。
cloud-create-cancel = キャンセル
cloud-create-submit = { $count } 個を作成
cloud-create-done-title = クラウドデバイスを作成しました
cloud-create-done = { $total } 個中 { $ready } 個の新しいクラウドデバイスが準備できました。デバイスピッカーで選択してください。
cloud-create-done-failed = { $total } 個中 { $ready } 個の新しいクラウドデバイスが準備できました。デバイスピッカーで選択してください。{ $failed } 件失敗しました。{ $device }: { $error }
cloud-create-unknown-error = 不明なエラー
