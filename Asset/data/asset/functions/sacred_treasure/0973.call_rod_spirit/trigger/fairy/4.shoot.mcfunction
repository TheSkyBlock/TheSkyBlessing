#> asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/4.shoot
#
# ショット発射！
#
# @within asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/3.main

# 属性弾を放つ 無属性弾は現状撃たない
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["87.ShotInit","87.ShotNormal"]}

# カウントを増やす
    scoreboard players add @s 87.CTCount 1

# ショットのInit発動
    execute as @e[type=armor_stand,tag=87.ShotInit] at @s run function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/1.init

# scheduleループ開始
    function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/2.tick

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset @s 87.Tick