# The main window's brief notices: flashes over the terminal, the status
# line's errors, the config diagnostic cards, and the agent skill offer.

window-notices-request-failed = { $operation }: { $error }
window-notices-navigate = 移動
window-notices-annotate-pages-unsupported = ページの注釈には macOS または Windows が必要です
window-notices-scrollback-needs-newer = スクロールバックを開くには新しい Herdr デーモンが必要です
window-notices-clear-needs-newer = ペインをクリアするには新しい Herdr デーモンが必要です。
window-notices-move-tabs-needs-newer = タブを移動するには新しい Herdr デーモンが必要です。

window-notices-skill-installed-at = ブラウザスキルを { $path } にインストールしました
window-notices-skill-installed-places =
    { $count ->
        [one] ブラウザスキルを { $count } か所にインストールしました
       *[other] ブラウザスキルを { $count } か所にインストールしました
    }
window-notices-skill-offer-title = エージェントにページを表示させますか？
window-notices-skill-offer-body = ペイン内のエージェントは、ここでページや HTML ドラフトをブラウザタブで開き、ピン留めしたノートを読み、承認用の自動化を書き、このアプリを拡張する Mod を書けます。スキルがその方法を教えます。
window-notices-skill-offer-detail = インストールすると herdr-gpui-browser/SKILL.md、herdr-automations/SKILL.md、herdr-mods/SKILL.md を、存在する ~/.claude/skills と ~/.agents/skills に書き込み、最新に保ちます。同じ名前でご自身が書いたスキルは変更されません。設定でいつでも削除できます。
window-notices-skill-offer-install = インストール
window-notices-skill-offer-decline = 今はしない

window-notices-zen-command = Zen モード: 終了するには Zen モードを切り替えを実行
window-notices-zen-key = Zen モード: 終了するには { $key }
window-notices-shift-select = Shift を押しながらドラッグしてテキストを選択

window-notices-diagnostic-app = Herdr UI
window-notices-diagnostic-copied = コマンドをコピーしました
window-notices-diagnostic-full = メッセージ全体

window-notices-checkpoint-restored = { $branch } のチェックポイントを復元しました
window-notices-checkpoint-not-restored = チェックポイントを復元できませんでした: { $error }
window-notices-checkpoint-not-restored-cause = チェックポイントを復元できませんでした: { $error }: { $cause }
