# Settings > Cloud devices: what the page and every provider's card say
# around their own fields. Provider, machine, region, size, and image names
# come from the providers and stay as they are. The section and the New
# device setup card take their titles from settings.ftl.

settings-cloud-unavailable = Windows ではクラウドデバイスを利用できません。アカウントは他のシステム用にここで編集できます。
settings-cloud-remove = 削除
settings-cloud-none-yet = まだありません。

settings-cloud-checking = 確認中…
settings-cloud-experimental = { $provider }（実験的）
settings-cloud-save = 保存
settings-cloud-cancel = キャンセル
settings-cloud-install-herdr = Herdr がない場合インストール
settings-cloud-install-herdr-in-it = Herdr がない場合その中にインストール
settings-cloud-new-sandbox = 新しいサンドボックス
settings-cloud-create-sandbox = サンドボックスを作成
settings-cloud-finish-setup = セットアップを完了
settings-cloud-creating = { $name } を作成中。デバイスピッカーに進行状況が表示されます。
settings-cloud-setting-up = { $name } をセットアップ中。デバイスピッカーに進行状況が表示されます。
settings-cloud-no-window-sandbox = サンドボックスを作成するにはメインの Herdr ウィンドウを開いてください。
settings-cloud-api-key = API キー
settings-cloud-forget-key = キーを忘れる
settings-cloud-key-saved = 保存しました。置き換えるには新しいキーを入力してください。
settings-cloud-key-missing = API キーは保存されていません。
settings-cloud-key-unreadable = API キーを読み取れませんでした: { $error }
settings-cloud-key-unusable = API キーを使用できませんでした: { $error }
settings-cloud-key-store-unavailable = 認証情報ストレージを利用できません。保存済みデバイスはまだ削除できます。
settings-cloud-default-choice = { $choice }（デフォルト）
settings-cloud-remove-ask = 削除…
settings-cloud-remove-from-herdr = Herdr からのみ削除
settings-cloud-deleted = { $name } を削除しました。
settings-cloud-delete-failed = { $name } を削除できませんでした: { $error }

settings-cloud-setup-run = 接続時にセットアップスクリプトを実行
settings-cloud-setup-note = 新しいクラウドデバイスが初めて接続したときに、セットアップタブで 1 回実行されます: ここで有効にしたエージェント、次に設定ファイルの [cloud] のセットアップスクリプト。[cloud.coder] などのプロバイダーのテーブルはどちらかを置き換えます。
settings-cloud-setup-install = { $agent } をインストール
settings-cloud-setup-none = 独自のセットアップスクリプトはありません。
settings-cloud-setup-more = … さらに { $count } 行
settings-cloud-setup-edit = 設定ファイルでセットアップスクリプトを編集

settings-cloud-images = イメージ
settings-cloud-images-note = { $provider ->
        [daytona] 各プロジェクトのイメージは、.herdr/sandbox/Dockerfile または dev コンテナから Herdr を追加してビルドされます。プロジェクトの新しいサンドボックスはそのイメージから起動し、レシピが変わると新しいイメージがビルドされます。ワークスペースのメニューから「サンドボックスイメージをビルド」で事前にビルドできます。
       *[other] 各プロジェクトのイメージは、.herdr/sandbox/Dockerfile または dev コンテナから Herdr を追加してビルドされます。プロジェクトの新しいコンテナはそのイメージから起動し、レシピが変わると新しいイメージがビルドされます。ワークスペースのメニューから「サンドボックスイメージをビルド」で事前にビルドできます。
    }
settings-cloud-image-build-error = { $project }: { $error } イメージをビルドするには { $path } をウィンドウで開いてください。
settings-cloud-image-no-window = イメージをビルドするにはメインの Herdr ウィンドウを開いてください。
settings-cloud-image-ready = 準備完了 · { $image } · { $built } にビルド
settings-cloud-image-failed = { $built } にビルド失敗
settings-cloud-image-log = ログ
settings-cloud-image-hide-log = ログを隠す
settings-cloud-image-build = 今すぐビルド
settings-cloud-image-reset = リセット
settings-cloud-image-delete = イメージを削除
settings-cloud-image-reset-confirm = ここでイメージを削除します。このプロジェクトの次に新しいマシンを作成するときに再ビルドされます。確認するには「イメージを削除」をクリックしてください。
