#> asset:sacred_treasure/0976.blue_heaven/trigger/combo/slash3
#
#
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/3.main

# 演出
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.8
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1.5 1.8
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 1.5
# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[0F,0F],Tags:["R4.SlashSweep","R4.SlashInit","R4.SlashFinish"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-45f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[45F,0F],Tags:["R4.SlashSweep","R4.SlashInit","R4.SlashFinish"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-45f]},DisabledSlots:4144959}

    execute if entity @s[y_rotation=67.5..114.9] run summon armor_stand ~ ~-0.3 ~ {Rotation:[90F,0F],Tags:["R4.SlashSweep","R4.SlashInit","R4.SlashFinish"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-45f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[135F,0F],Tags:["R4.SlashSweep","R4.SlashInit","R4.SlashFinish"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-45f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[180F,0F],Tags:["R4.SlashSweep","R4.SlashInit","R4.SlashFinish"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-45f]},DisabledSlots:4144959}

    execute if entity @s[y_rotation=-157.5..-114.9] run summon armor_stand ~ ~-0.3 ~ {Rotation:[-135F,0F],Tags:["R4.SlashSweep","R4.SlashInit","R4.SlashFinish"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-45f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[-90F,0F],Tags:["R4.SlashSweep","R4.SlashInit","R4.SlashFinish"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-45f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[-45F,0F],Tags:["R4.SlashSweep","R4.SlashInit","R4.SlashFinish"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-45f]},DisabledSlots:4144959}

# 射撃
    summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:["R4.SlashShot","R4.SlashShotInit"],Pose:{Head:[0.1f,0f,0.0f]},DisabledSlots:4144959}
    execute as @e[type=armor_stand,tag=R4.SlashShotInit] at @s run function asset:sacred_treasure/0976.blue_heaven/trigger/slash_shot/init
    schedule function asset:sacred_treasure/0976.blue_heaven/trigger/slash_shot/1.tick 1t replace

# しばらく撃てなくなる
    tag @s add R4.FinishCoolTime