#> asset:sacred_treasure/0985.noname/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin
# ループ
    execute if entity @a[scores={RD.WaitingTime=1..},limit=1] run schedule function asset:sacred_treasure/0985.noname/trigger/schedule_loop 1t replace