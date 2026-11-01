# Failures reaching or serving the control socket that `herdr-gpui <command>`
# uses to drive the running app. $path is the socket or named pipe; $error
# is the system's own words.

error-control-message-size = 制御リクエストまたは応答が { $limit } バイトを超えています
error-control-no-response = Herdr UI が応答せずに制御接続を閉じました
error-control-pipe-foreign = { $path } はこのユーザーの Herdr UI 以外が保持しているため、使用されません
error-control-socket-in-use = 別の Herdr UI がすでに { $path } で待ち受けています
error-control-unavailable = Herdr UI が実行されていないか、制御ソケット { $path } に到達できません: { $error }
error-control-user = Windows ユーザーを識別できませんでした: { $error }
