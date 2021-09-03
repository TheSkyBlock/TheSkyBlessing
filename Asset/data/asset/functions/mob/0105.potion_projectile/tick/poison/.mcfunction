#> asset:mob/0105.potion_projectile/tick/poison/
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/5.element_branch

# スコア
    scoreboard players add @s 2X.InBlockTime 1

# 毒
    effect give @a[distance=..3] poison 5 4 false

# 演出
    particle dust 0 0.4 0 2 ~ ~1.2 ~ 1 0.4 1 0 1 normal @a
    particle dust 0.6 0 1 1 ~ ~1.2 ~ 1 0.4 1 0 1 normal @a
    playsound block.fire.extinguish master @a ~ ~ ~ 0.4 2 0

# 一定時間経過によるkill
    execute if score @s 2X.InBlockTime matches 60.. run kill @s