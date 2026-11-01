# A phone paired for remote control, under its name in Settings > Remote
# control and the title bar's remote menu. $ago is an ago- message, such as
# "3 h ago".

remote-device-line = { $seen ->
        [connected] 現在接続中
        [never] 未接続
       *[seen] 最終確認 { $ago }
    } · { $push ->
        [on] 通知オン
       *[off] 通知オフ
    }
