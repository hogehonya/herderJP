# Local containers run by Docker or Podman as cloud devices. $engine is the
# program, docker or podman. $name is a container's or volume's name.
# [container] is the config table; engine and max_containers are its keys.

error-remote-container-no-engine = docker も podman も見つかりませんでした。インストールするか、[container] engine を設定してください。
error-remote-container-spawn = { $engine } を実行できませんでした。
error-remote-container-failed = { $engine } { $action } が失敗しました: { $detail }
error-remote-container-timeout = { $engine } { $action } が時間内に完了しませんでした。
error-remote-container-gone = コンテナ { $name } はもう存在しません。
error-remote-container-suspended = コンテナ { $name } は停止しています。再接続すると再起動します。
error-remote-container-name-taken = { $name } という名前のコンテナまたはボリュームはすでに存在します。別の名前で再試行してください。
error-remote-container-not-ours = エンジン上の { $name } はこのデバイス用に Herdr UI が作成したものではないため、そのままにされました。
error-remote-container-limit = すでに { $count } 個のコンテナがあり、[container] max_containers の上限です。先に 1 つ削除してください。
error-remote-container-cancelled = キャンセルされました。
error-remote-container-build-context = イメージのビルドコンテキストを書き込めませんでした。
error-remote-container-image-not-ours = イメージ { $image } は Herdr UI がビルドしたものではないため、そのままにされました。
