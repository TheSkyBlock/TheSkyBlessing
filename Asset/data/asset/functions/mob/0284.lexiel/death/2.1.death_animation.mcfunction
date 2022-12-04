#> asset:mob/0284.lexiel/death/2.1.death_animation
#
# 死亡アニメーションをするための再起部分
#
# @within function
#   asset:mob/0284.lexiel/death/2.death
#   asset:mob/0284.lexiel/death/2.1.death_animation

# ファンクション
    execute as @e[type=armor_stand,tag=7W.ArmorStandDeath] at @s run function asset:mob/0284.lexiel/death/2.2.death_animation_pose

# 再起
    execute if entity @e[type=armor_stand,tag=7W.ArmorStandDeath] run schedule function asset:mob/0284.lexiel/death/2.1.death_animation 1t