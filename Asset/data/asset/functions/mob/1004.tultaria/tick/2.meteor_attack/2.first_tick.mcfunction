#> asset:mob/1004.tultaria/tick/2.meteor_attack/2.first_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.meteor_attack/1.meteor_attack

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [30f,360f,28f]
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,90f]
# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20070}
# 頭変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20075}
# 演出
    playsound minecraft:entity.puffer_fish.death master @a[distance=..30] ~ ~ ~ 1 0.5 1

# 召喚5個
    function asset:mob/1004.tultaria/tick/2.meteor_attack/3.summon
# 召喚3個（HP30%以下）
    execute if entity @s[tag=RW.HPless30per] run function asset:mob/1004.tultaria/tick/2.meteor_attack/4.summon2