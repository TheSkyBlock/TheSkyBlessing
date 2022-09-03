#> asset:mob/1014.deadlyshot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1014.deadlyshot/tick/1.trigger

# スコア加算
    scoreboard players add @s S6.Tick 1

# 前進
    tp @s ^ ^ ^0.3

# パーティクル
    particle dust 0.816 0 1 0.5 ~ ~ ~ 0 0 0 0 1

# ある程度経つと戻ってくる
    execute if score @s S6.Tick matches 60 facing entity @e[type=wither_skeleton,scores={MobID=1004}] feet run tp @s ~ ~ ~ ~ ~

# 時間が経った後、持ち主の近くにいくと消える
    execute if score @s S6.Tick matches 60.. if entity @e[type=wither_skeleton,scores={MobID=1004},distance=..1] run kill @s

# プレイヤーの衝突判定
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] run function asset:mob/1014.deadlyshot/tick/3.hit

# フェイルセーフ
    execute if score @s S6.Tick matches 180.. run kill @s