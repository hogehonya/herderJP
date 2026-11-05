# Settings > Fonts: the faces, the font picker, and the specimen. Each
# face's title is in settings.ftl; font family names are data.

settings-fonts-section-faces = フェイス
settings-fonts-use-one = すべてに 1 つのファミリーを使用…
settings-fonts-system-font = システムフォント
settings-fonts-size = { $size } px

settings-fonts-specimen-terminal = 見本 · ターミナル
settings-fonts-specimen-sidebar = 見本 · サイドバー
settings-fonts-specimen-tabs = 見本 · タブ
settings-fonts-specimen-ui = 見本 · インターフェース
settings-fonts-sample-sidebar-1 = herdr-gpui / ワークスペース
settings-fonts-sample-sidebar-2 = {"  "}claude  作業中
settings-fonts-sample-sidebar-3 = {"  "}codex   レビュー準備完了
settings-fonts-sample-tabs-1 = main.rs   エージェント / レビュー
settings-fonts-sample-tabs-2 = 変更   ターミナル   プレビュー
settings-fonts-sample-ui-1 = 集中できるワークスペースを。
settings-fonts-sample-ui-2 = あなたの設定、あなたのワークスペース。

settings-fonts-picker-title =
    フォントファミリー / { $role ->
        [all] すべての役割
        [terminal] ターミナル
        [sidebar] サイドバー
        [tabs] タブ
       *[ui] インターフェース
    }
settings-fonts-picker-default =
    プラットフォームのデフォルトファミリーを使用 / { $role ->
        [all] すべての役割
        [terminal] ターミナル
        [sidebar] サイドバー
        [tabs] タブ
       *[ui] インターフェース
    }
settings-fonts-picker-close = 閉じる
settings-fonts-loading = インストール済みフォントを読み込み中...
settings-fonts-count = { $total } 個中 { $shown } 個のインストール済みファミリー
settings-fonts-no-match = 一致するフォントはありません。
settings-fonts-search-placeholder = インストール済みフォントを検索...
