# The sidebar beside the terminals: its headings, rows, footer, and the
# compact rail. Names of workspaces, branches, agents, and devices are the
# user's and the daemon's, never messages.

sidebar-header-spaces = ワークスペース
sidebar-header-devices = デバイス
sidebar-header-agents = エージェント
sidebar-label = サイドバー
sidebar-workspaces-label = ワークスペース
sidebar-devices-label = デバイス
sidebar-agents-label = エージェント
sidebar-no-agents = エージェントなし
sidebar-no-matching-agents = 一致するエージェントなし

sidebar-new = 新規
sidebar-new-workspace = 新しいワークスペース
sidebar-menu = メニュー
sidebar-menu-label = メニュー

sidebar-sort-grouped = グループ化
sidebar-sort-priority = 優先度
sidebar-agents-sort = エージェントの並べ替え: { $sort }
sidebar-agents-view = エージェント: { $view }

sidebar-status-working = 作業中
sidebar-status-blocked = ブロック中
sidebar-status-done = 完了
sidebar-status-idle = 待機中
sidebar-status-unknown = 不明

sidebar-spoken-separator = {", "}
sidebar-spoken-linked-worktree = リンク済みワークツリー
sidebar-spoken-connected = 接続済み
sidebar-spoken-disconnected = 未接続
sidebar-spoken-working = { $count } 作業中

sidebar-rail-in = { $place } の { $name }
sidebar-rail-status = { $text }（{ $status }）
sidebar-rail-host = { $host }: { $text }
sidebar-rail-collapsed = { $host }（折りたたみ）

sidebar-origin-local = このマシン
sidebar-origin-ssh = SSH ホスト
sidebar-origin-tailscale = SSH 経由の Tailscale ホスト
sidebar-origin-wsl = WSL ディストリビューション
sidebar-origin-cloud = { $provider } の { $noun ->
        [VM] VM
        [container] コンテナ
        [sandbox] サンドボックス
        [sprite] スプライト
        [workspace] ワークスペース
       *[machine] マシン
    }
sidebar-origin-cloud-ssh = { $provider } の { $noun ->
        [VM] VM
        [container] コンテナ
        [sandbox] サンドボックス
        [sprite] スプライト
        [workspace] ワークスペース
       *[machine] マシン
    }（SSH 経由）

sidebar-workspace-move-not-sent = ワークスペースの移動を送信しませんでした: { $error }

sidebar-primary = プライマリ
sidebar-spoken-muted = 通知ミュート中
