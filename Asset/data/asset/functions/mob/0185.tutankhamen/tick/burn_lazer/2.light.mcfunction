#> asset:mob/0185.tutankhamen/tick/burn_lazer/2.light
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_lazer/1.main

# lightは照射の意

# プレイヤーの方向を見る
    execute if score @s 55.AttackTick matches 2 run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] feet

# 照射
    execute positioned ~ ~1.3 ~ run function asset:mob/0185.tutankhamen/tick/burn_lazer/3.light_recursive

# 実行中の音
    execute as @a[distance=..30] at @s run playsound block.note_block.bit master @s ~ ~ ~ 0.8 1 1