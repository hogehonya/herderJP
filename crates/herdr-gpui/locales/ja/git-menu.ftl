# The title bar's Git popup for the focused checkout, and its pull request.

git-menu-checking = 作業ツリーを確認中...
git-menu-clean = 未コミットの変更はありません
git-menu-changes = { $untracked ->
        [0] +{ $additions } -{ $deletions }
        [one] +{ $additions } -{ $deletions }、未追跡 { $untracked } 件
       *[other] +{ $additions } -{ $deletions }、未追跡 { $untracked } 件
    }
git-menu-commit = コミット...
git-menu-push = プッシュ
git-menu-open-pull-request = プルリクエスト #{ $number } を開く
git-menu-create-pull-request = プルリクエストを作成
git-menu-checks-and-comments = チェックとコメント
git-menu-comment = コメント...
git-menu-merge = マージ...
git-menu-not-committed = { $untracked ->
        [0] まだコミットされていません
       *[other] まだコミットされていません（未追跡 { $untracked } 件）
    }
git-menu-draft = ドラフト — レビュー準備未完了
git-menu-ready = レビュー準備完了
git-menu-review-heading = レビュー
git-menu-merge-heading = マージ
git-menu-checks-heading = チェック
git-menu-loading-pull-request = プルリクエストを読み込み中...
git-menu-open-in-browser = ブラウザで開く
