#> asset:sacred_treasure/0976.blue_heaven/trigger/combo/slash2
#
#
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/3.main

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 1
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[0F,0F],Tags:["R4.SlashSweep","R4.SlashInit"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,75f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[45F,0F],Tags:["R4.SlashSweep","R4.SlashInit"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,75f]},DisabledSlots:4144959}

    execute if entity @s[y_rotation=67.5..114.9] run summon armor_stand ~ ~-0.3 ~ {Rotation:[90F,0F],Tags:["R4.SlashSweep","R4.SlashInit"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,75f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[135F,0F],Tags:["R4.SlashSweep","R4.SlashInit"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,75f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[180F,0F],Tags:["R4.SlashSweep","R4.SlashInit"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,75f]},DisabledSlots:4144959}

    execute if entity @s[y_rotation=-157.5..-114.9] run summon armor_stand ~ ~-0.3 ~ {Rotation:[-135F,0F],Tags:["R4.SlashSweep","R4.SlashInit"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,75f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[-90F,0F],Tags:["R4.SlashSweep","R4.SlashInit"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,75f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[-45F,0F],Tags:["R4.SlashSweep","R4.SlashInit"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,75f]},DisabledSlots:4144959}