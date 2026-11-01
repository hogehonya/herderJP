# Agent chats: the connection to herdr-acp, the chat program in a pane, and
# starting a new chat. [chat.env] and [chat.mirrors] are config tables.

error-chat-apply = チャットの変更がトランスクリプトに適合しません
error-chat-busy = 応答待ちのチャットコマンドが多すぎます
error-chat-bye = チャットプログラムが退出しました: { $reason }
error-chat-closed = チャットプログラムが接続を閉じました
error-chat-connect = チャットプログラムに到達できませんでした
error-chat-environment-name = `{ $name }` はチャット環境変数に使用できません
error-chat-environment-size = [chat.env] は { $count } 個または { $bytes } バイトを超える変数を保持しています
error-chat-handshake = チャットプログラムが最初に挨拶しませんでした
error-chat-mirror-config = [chat.mirrors] には最大 16 個の有効なペインとエンドポイント識別子が必要です
error-chat-no-endpoint-dir = チャットソケットを保持するプライベートディレクトリがありません
error-chat-not-attached = チャットビューがアタッチされていません
error-chat-overflow = チャットビューがプログラムに追いつけなくなりました
error-chat-read = チャットプログラムから読み取れませんでした
error-chat-read-only = これは読み取り専用のトランスクリプトです。返信するにはエージェントのターミナルを使用してください
error-chat-remote = SSH 経由でチャットプログラムに到達できませんでした
error-chat-spawn = チャットワーカーを開始できませんでした
error-chat-stream = チャットの変更 { $got } が { $after } に続いていません
error-chat-version = チャットプログラムはプロトコルバージョン { $version } を使用しています

error-chat-start-agent-missing = { $agent } はこのホストにインストールされていません
error-chat-start-disabled = 設定で ACP チャットがオフになっています
error-chat-start-no-workspace = フォーカスされたワークスペースがありません
error-chat-start-not-connected = Herdr UI が接続されていません
error-chat-start-not-local = チャットはこのマシンの Herdr または SSH ホストの Herdr で開始します
error-chat-start-program-missing = Herdr UI の隣または PATH に herdr-acp が見つかりませんでした
error-chat-start-program-unknown = Herdr UI はまだ herdr-acp を探しています
error-chat-start-response = Herdr の応答がチャットのタブを示していません
error-chat-start-slot-busy = 別のタブがまだ開いています
error-chat-start-timeout = Herdr が時間内にチャットのタブを開きませんでした
