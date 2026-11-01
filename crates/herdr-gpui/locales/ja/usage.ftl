# Plan usage: the status bar's segments, the panel a segment opens, and the
# activity bar's Usage section. Service, account, plan, and host names are
# shown as reported.

usage-section-title = 使用状況
usage-refresh = 更新
usage-updating = 更新中…
usage-off = プラン使用状況はオフです。設定で使用状況をオンにして、エージェントの制限を読み取ってください。
usage-not-read-yet = まだ読み取られていません
usage-read-while-selected = このホストが選択されている間に読み取ります
usage-no-agents = このホストにサインイン済みのエージェントが見つかりません。
usage-not-updated-yet = まだ更新されていません
usage-updated-ago = { $time } 前に更新
usage-updated-just-now = 1 分未満前に更新
usage-panel-subtitle = { $updated } · { $host }

usage-unavailable = 使用状況を利用できません
usage-refresh-usage = 使用状況を更新
usage-segment = { $name } の使用状況 { $percent }% 使用
usage-segment-idle = { $name } の使用状況
usage-bar-resets = { $percent }% 使用 { $time }
usage-bar-named = { $percent }% 使用 { $name }
usage-bar-kind = { $percent }% 使用 { $kind ->
        [session] 5h
        [daily] 日
        [weekly] 週
       *[monthly] 月
    }

usage-countdown-minutes = { $minutes }分
usage-countdown-hours = { $hours }時間 { $minutes }分
usage-countdown-days = { $days }日 { $hours }時間

usage-kind = { $kind ->
        [session] セッション
        [daily] 日次
        [weekly] 週次
        [monthly] 月次
       *[named] { $name }
    }
usage-limit-left = { $kind ->
        [session] セッション
        [daily] 日次
        [weekly] 週次
        [monthly] 月次
       *[named] { $name }
    } 残り { $left }%
usage-left = 残り { $left }%
usage-resets-in = { $time } 後にリセット
usage-pace-ran-out = 使い切りました
usage-pace = { $standing ->
        [reserve] 余裕 { $margin }%
        [deficit] 不足 { $margin }%
       *[even] 順調
    } · { $outlook ->
        [runs-out] { $time } で使い切ります
       *[lasts] リセットまで持ちます
    }
usage-balance-of = { $total } 中 { $amount }

usage-dashboard = 使用状況ダッシュボード
usage-status-page = ステータスページ
usage-daily-spend = 日次支出
usage-other-accounts = 他のアカウント
usage-account-disabled = 無効
usage-account-note = { $status ->
        [stale] 最後に判明した値
        [token-expired] トークン期限切れ
        [api-key] API キー
        [keychain] キーチェーン利用不可
        [relogin] 再ログインが必要
        [foreign] 外部の認証情報
        [no-credentials] 認証情報なし
       *[unavailable] 利用不可
    }{ $disabled ->
        [yes] 、無効
       *[no] {""}
    }
usage-keychain-needed = { $name } のサインインは macOS Keychain に保存されているため、読み取ると macOS が許可を求めます。起動時に再度尋ねられずにこれらの数値を表示するには「常に許可」を選択してください。
usage-keychain-allow = Keychain アクセスを許可
usage-keychain-denied = macOS が { $name } のサインインの共有を許可されませんでした。再試行すると macOS がもう一度尋ねます。
usage-keychain-try-again = 再試行
usage-setup = セットアップ
usage-setup-setting-or-env = { $setting } または { $variables }
