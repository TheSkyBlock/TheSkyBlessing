#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.4.fairy_shoot
#
# ショット発射！
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.3.fairy_main

# ショット役召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["ChuzFairyShotInit"]}

# scheduleループ開始
    function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.1.shot_tick

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt player @a ~ ~ ~ 2 2
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 2

# 自身は死ぬ
#    tp @s ~ -400 ~
#    kill @s