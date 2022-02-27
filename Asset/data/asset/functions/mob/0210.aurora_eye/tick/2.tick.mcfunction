#> asset:mob/0210.aurora_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0210.aurora_eye/tick/1.trigger

# 演出
    scoreboard players add @s 5U.Tick 1
    execute if entity @s[scores={5U.Tick=1}] run particle dust 0.000 0.545 1.000 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 1 normal
    execute if entity @s[scores={5U.Tick=2}] run particle dust 0.000 0.773 0.941 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 1 normal
    execute if entity @s[scores={5U.Tick=3}] run particle dust 0.000 1.000 0.886 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 1 normal
    execute if entity @s[scores={5U.Tick=4}] run particle dust 0.000 0.773 0.941 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 1 normal
    execute if entity @s[scores={5U.Tick=4..}] run scoreboard players reset @s 5U.Tick

# 接地で上を向く
    execute unless block ~ ~1.6 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~2.5 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# 範囲内ならホーミングじみた移動、ただしダメージを受けていないなら
    execute facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={5U.AttackCT=1..}] 5U.AttackCT 1

# クールタイム中じゃないなら接触時に攻撃
    execute unless score @s 5U.AttackCT matches 1.. anchored eyes positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!creative,gamemode=!spectator,dx=1] run function asset:mob/0210.aurora_eye/tick/3.attack

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.3 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45