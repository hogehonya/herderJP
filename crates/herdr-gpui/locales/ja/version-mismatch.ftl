# The notice that a Herdr daemon refused this app's handshake. $place is
# "local" for this device, or "host" for an SSH or WSL device named $host.
# $version is the daemon's version. The command to run, `herdr update`, is
# shown beside the text.

version-mismatch-daemon-title = Herdr の更新が必要です
version-mismatch-client-title = Herdr UI の更新が必要です
version-mismatch-daemon-old = { $place ->
        [local] このデバイスの Herdr サーバー（バージョン { $version }）はこのアプリには古すぎます。ターミナルでこのコマンドを実行してください。更新されたサーバーが実行されるとアプリが再接続します。
       *[host] { $host } の Herdr サーバー（バージョン { $version }）はこのアプリには古すぎます。{ $host } でこのコマンドを実行してください。更新されたサーバーが実行されるとアプリが再接続します。
    }
version-mismatch-daemon-silent = { $place ->
        [local] このデバイスの Herdr サーバーがこのアプリのハンドシェイクに応答しませんでした。このアプリには Herdr { $minimum } 以降が必要です。ターミナルでこのコマンドを実行してください。更新されたサーバーが実行されるとアプリが再接続します。
       *[host] { $host } の Herdr サーバーがこのアプリのハンドシェイクに応答しませんでした。このアプリには Herdr { $minimum } 以降が必要です。{ $host } でこのコマンドを実行してください。更新されたサーバーが実行されるとアプリが再接続します。
    }
version-mismatch-client-old = { $place ->
        [local] このデバイスの Herdr サーバー（バージョン { $version }）はこのアプリがサポートするより新しいです。接続するにはこのアプリを更新してください。
       *[host] { $host } の Herdr サーバー（バージョン { $version }）はこのアプリがサポートするより新しいです。接続するにはこのアプリを更新してください。
    }
version-mismatch-client-old-unknown = { $place ->
        [local] このデバイスの Herdr サーバーはこのアプリがサポートするより新しいです。接続するにはこのアプリを更新してください。
       *[host] { $host } の Herdr サーバーはこのアプリがサポートするより新しいです。接続するにはこのアプリを更新してください。
    }
version-mismatch-copied = `{ $command }` をコピーしました
version-mismatch-copy = コマンドをコピー
version-mismatch-check = 更新を確認
version-mismatch-dismiss = 閉じる
