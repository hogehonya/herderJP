# Settings > Cloud devices > Container. Engine names (Docker, Podman), their
# versions, and container names stay as they are.

settings-cloud-container-note = このコンピューターの Docker または Podman エンジンでコンテナを作成してデバイスとして使用します。それぞれに専用のホームボリューム、CPU、メモリ、プロセス制限があり、このコンピューターのファイルにアクセスできない非特権ユーザーとしてエージェントを実行します。コンテナはこのコンピューターのカーネルを共有します: 信頼できないコードには VM プロバイダーを使用してください。
settings-cloud-container-checking = Docker または Podman を確認中…
settings-cloud-container-engine-running = { $engine } { $version } が実行中です。

settings-cloud-container-engine = エンジン
settings-cloud-container-engine-placeholder = docker または podman。空の場合は最初にインストールされたもの
settings-cloud-container-image = イメージ
settings-cloud-container-cpus = CPU
settings-cloud-container-memory = メモリ
settings-cloud-container-auto-stop = 自動停止
settings-cloud-container-auto-stop-placeholder = never、または 30m、2h: エージェントがその時間作業しなくなったら停止

settings-cloud-container-new = 新しいコンテナ
settings-cloud-container-new-note = 生成された名前でコンテナを作成し、必要なら先にイメージをプルし、Herdr がその中で実行されるとデバイスとして追加します。
settings-cloud-container-install = その中に Herdr をインストール
settings-cloud-container-create = コンテナを作成
settings-cloud-container-no-window = コンテナを作成するにはメインの Herdr ウィンドウを開いてください。
settings-cloud-container-devices = コンテナ
settings-cloud-container-devices-note = 削除するとコンテナを忘れ、エンジン上に残します。ファイルごと削除するには、サイドバーメニューの「デバイスを削除…」を使用してください。先に未プッシュの作業を確認します。
settings-cloud-container-stop = 停止
settings-cloud-container-running = { $engine } · 実行中
settings-cloud-container-stopped = { $engine } · 停止
settings-cloud-container-missing = { $engine } · エンジンに見つかりません
settings-cloud-container-unreachable = { $engine } · エンジンに到達できません
settings-cloud-container-unsaved = ここに保存されていません
settings-cloud-container-unsaved-note = Herdr UI がこれらのコンテナを作成しましたが、デバイスがありません（作成中に終了した場合など）。使用するには追加するか、後でサイドバーメニューから削除してください。
settings-cloud-container-adopt = 追加
