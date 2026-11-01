# Why a worktree script could not be read or started.
# .herdr/worktree.toml is the file the scripts are read from.

error-worktree-scripts-busy = 別のワークツリースクリプトがまだ起動中です
error-worktree-scripts-checkout = デーモンがこのワークスペースのチェックアウトを特定しませんでした
error-worktree-scripts-encoding = .herdr/worktree.toml が有効な UTF-8 ではありません
error-worktree-scripts-not-git = このワークスペースは Herdr がまだ認識している Git チェックアウトではありません
error-worktree-scripts-nul = .herdr/worktree.toml のスクリプトに NUL バイトを含めることはできません
error-worktree-scripts-parse = .herdr/worktree.toml: { $error }
error-worktree-scripts-read = .herdr/worktree.toml を読み取れませんでした: { $error }
error-worktree-scripts-remote = ホスト上の .herdr/worktree.toml を読み取れませんでした: { $error }
error-worktree-scripts-response = スクリプトのタブを開く際にデーモンから予期しない応答がありました
error-worktree-scripts-size = .herdr/worktree.toml が { $limit } バイトを超えています
error-worktree-scripts-unsupported-host = WSL ディストリビューションからワークツリースクリプトはまだ読み取れません
