# The Security section: private vulnerability reports in triage and
# Dependabot alerts across the window's repositories, and an item's page.
# Repository, package, advisory, and reporter names and what GitHub writes
# are shown as they are.

security-title = セキュリティ
security-subtitle = 非公開レポートと Dependabot アラート
security-refresh = 更新
security-updating = 更新中…
security-updated = { $ago } に更新
security-ago-just-now = たった今
security-ago-minutes = { $minutes } 分前
security-ago-hours = { $hours } 時間前
security-ago-days = { $days } 日前
security-no-workspace = 先にワークスペースを開いてください

security-reading-repositories = リポジトリを読み込み中…
security-sign-in = Herdr で GitHub にサインイン（右上のアカウントボタン）して、セキュリティアラートとレポートを読み取ってください。
security-no-repository = このウィンドウのワークスペースに github.com のリポジトリが開かれていません。
security-no-match = 検索と選択したピルに一致するものはありません。
security-quiet = このアカウントが確認できる未解決アラートはありません: { $repositories }
security-alerts-off = Dependabot アラートがオフです: { $repositories }
security-alerts-unreadable = この GitHub サインインでは Dependabot アラートを読み取れません: { $repositories }
security-reports-unreadable = この GitHub サインインでは非公開の脆弱性レポートを読み取れません: { $repositories }
security-repository-failed = { $repository }: { $error }
security-reports-failed = 非公開レポート: { $error }

security-reported = あなたへの報告
security-reported-count = { $more ->
        [yes] トリアージ中の非公開脆弱性レポート { $count } 件以上
       *[no] トリアージ中の非公開脆弱性レポート { $count } 件
    }
security-in-triage = { $count } 件がトリアージ中
security-reported-by = { $login } による報告
security-open-count = { $count } 件未解決
security-open-of = 未解決 { $total } 件中 { $shown } 件
security-repository-detail = { $host } · { $count }
security-fixed-in = { $version } で修正
security-no-fix = 修正バージョンはまだありません
security-dependabot = Dependabot
security-start-agent = エージェントを起動
security-filter = フィルタ: 概要、パッケージ、アドバイザリ、リポジトリ、報告者…

security-severity = { $severity ->
        [critical] 重大
        [high] 高
        [moderate] 中
       *[low] 低
    }
security-unrated = 未評価
security-severity-cvss = { $severity ->
        [critical] 重大
        [high] 高
        [moderate] 中
       *[low] 低
    } · CVSS { $score }
security-reporter-rating = { $severity ->
        [critical] 重大
        [high] 高
        [moderate] 中
       *[low] 低
    } · 報告者の評価

security-private-reports = 非公開レポート
security-show-list = リストを表示
security-hide-list = リストを隠す
security-position = { $count } 件中 { $at } 件目
security-previous = 前へ
security-next = 次へ
security-open-on-github = GitHub で開く
security-close = 閉じる
security-tag-open = 未解決
security-tag-triage = トリアージ
security-tab-overview = 概要
security-tab-advisory = アドバイザリ
security-tab-dependency = 依存関係の経路
security-tab-report = レポート
security-tab-draft = アドバイザリのドラフト
security-tab-conversation = 会話
security-not-read = GitHub から読み取られていません。
security-reading = GitHub から読み取り中…
security-page-failed = GitHub がこのページを提供しませんでした: { $error }
security-try-again = 再試行
security-no-description = 説明はありません。
security-date = { $year }年{ $month ->
        [1] 1
        [2] 2
        [3] 3
        [4] 4
        [5] 5
        [6] 6
        [7] 7
        [8] 8
        [9] 9
        [10] 10
        [11] 11
       *[12] 12
    }月{ $day }日 · { $ago }

security-what-happened = 何が起きたか
security-upgrade-to-fix = 修正するにはアップグレード
security-no-fixed-version = 修正バージョンはまだありません
security-copied = コマンドをコピーしました
security-pulls-in = { $manifest } が影響を受けるバージョンを取り込んでいます。
security-no-fix-known = GitHub は修正バージョンを認識していません: 依存関係を削除するか緩和してください。
security-fix-with-agent = エージェントで修正
security-open-file = { $file } を開く
security-dismiss = GitHub で却下
security-direct = 直接: マニフェストが指定しています
security-transitive = 推移的: 別の依存関係が取り込んでいます
security-runtime = ランタイム: プロジェクトと一緒に出荷されます
security-development = 開発: プロジェクトのビルドまたはテストのみに使用されます
security-unknown = GitHub は判別できませんでした
security-dependabot-fix = Dependabot の修正
security-lockfile-note = GitHub はどの依存関係が取り込んでいるかを示しません。ロックファイルが示します。
security-open-lockfile = ロックファイルを開く
security-references = 参照
security-fact-package = パッケージ
security-fact-relationship = 関係
security-fact-scope = スコープ
security-fact-manifest = マニフェスト
security-fact-requirement = 要件
security-fact-affected-versions = 影響を受けるバージョン
security-fact-severity = 重大度
security-fact-installed = インストール済み
security-fact-identifiers = 識別子
security-fact-weakness = 脆弱性の種類
security-fact-opened = 作成日
security-fact-score = スコア
security-fact-vector = ベクター
security-fact-published = 公開日
security-fact-rating = 評価
security-fact-affected = 影響
security-fact-draft = ドラフトアドバイザリ
security-fact-reporter = 報告者
security-fact-filed = 報告日
security-fact-credit = クレジット

security-report = レポート
security-investigate = エージェントで調査
security-triage = GitHub で承認またはクローズ
security-private = 公開されるまで非公開
security-private-note = リポジトリのメンテナーと報告者のみが閲覧できます。承認するとドラフトアドバイザリが開きます。報告者のスレッドは GitHub に残ります。
security-draft-package = { $package }（{ $ecosystem }）{ $vulnerable } · { $fixed ->
        [yes] { $patched } で修正
       *[no] 修正バージョンはまだありません
    }
security-draft-empty = ドラフトにはまだパッケージ、スコア、クレジットがありません。
security-no-comments = コメントはまだありません。
security-reply = GitHub で返信
security-read-on-github = GitHub で読む
security-comments-unavailable = GitHub がこのレポートのコメントを一覧表示しませんでした: そのコメント API は公開リポジトリ向けのプレビューです。
security-comments-more = 最初の { $count } 件のコメントのみ表示しています。

security-no-host = { $repository } でエージェントを起動するには、ワークスペースのあるホストを表示してください
security-menu-closed = ワークスペースのメニューが開きませんでした
security-agents-need-git = エージェントにはこのマシンまたは SSH ホスト上の Git ワークスペースが必要です
security-clear-search = 検索をクリア
