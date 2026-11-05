# The Overview page: every host's agents, sorted by what needs the user.
# Agent, workspace, branch, and host names are shown as they are.

overview-title = 概要
overview-stat-needs = { $count } 件の対応待ち
overview-stat-working = { $count } 件作業中
overview-stat-ready = { $count } 件準備完了
overview-pinned = ピン留め
overview-needs-you = 対応が必要
overview-ready-for-review = レビュー準備完了
overview-working = 作業中
overview-idle = 待機中
overview-snoozed = スヌーズ中
overview-settled = 処理済み
overview-closed = 閉じた
overview-row-detail = { $workspace } · { $detail }
overview-wakes = { $time } に再開
overview-woke = 再開済み
overview-run-failed = 実行に失敗: { $title }

overview-reopen = 再開
overview-forget = 忘れる
overview-snooze = スヌーズ
overview-settle = 処理済みにする
overview-pin = ピン留め
overview-unpin = ピン留め解除
overview-unsettle = 処理済みを解除
overview-wake-now = 今すぐ再開
overview-open = 開く
overview-snooze-until = までスヌーズ
overview-preset-hour = 1 時間後
overview-preset-hours = 3 時間後
overview-preset-evening = 今晩
overview-preset-tomorrow = 明日
overview-preset-next-week = 来週
overview-weekday-time = { $day ->
        [mon] 月曜
        [tue] 火曜
        [wed] 水曜
        [thu] 木曜
        [fri] 金曜
        [sat] 土曜
       *[sun] 日曜
    } { $time }
overview-elapsed-now = 現在
overview-elapsed-minutes = { $minutes }分
overview-elapsed-hours = { $hours }時間
overview-elapsed-days = { $days }日

overview-empty-title = 表示するエージェントがありません
overview-empty = 概要は、このウィンドウが接続するすべてのホストのエージェントを集めます: 対応待ちと失敗した実行が先、次にレビュー準備完了の作業、作業中のエージェント、待機中のエージェントです。スヌーズまたは処理済みにすると脇に置けます。閉じたエージェントは「閉じた」の下で再開を待ちます。

overview-hosts = ホスト
overview-connecting = 接続中…
overview-not-connected = 未接続
overview-agents = { $total ->
        [0] エージェントなし
       *[other] { $total } 個のエージェント
    }
overview-agents-working = { $total ->
        [0] エージェントなし
       *[other] { $total } 個のエージェント
    } · { $working } 個作業中
overview-meter-cpu = CPU
overview-meter-memory = メモリ
overview-meter-gpu = GPU
overview-meter-vram = VRAM

overview-session-gone = エージェントの元のセッションはもう接続されていません
overview-tab-opening = 別のタブがまだ開いています
overview-host-switch = エージェントのホストに切り替えられません
overview-host-timeout = エージェントのホストが時間内に応答しませんでした
overview-workspace-closed = エージェントのワークスペースは閉じられています
overview-reopen-failed = エージェントが再開しませんでした: { $error }
