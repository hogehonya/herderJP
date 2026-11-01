# How long ago something happened, after a label or inside a sentence:
# "Last seen 3 h ago", "Restore it from 2 days ago?". $count is whole
# minutes, hours, or days.

ago-now = たった今
ago-minutes = { $count } 分前
ago-hours = { $count } 時間前
ago-days = { $count ->
    [1] 昨日
   *[other] { $count } 日前
}
