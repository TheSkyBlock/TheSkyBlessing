#> asset:mob/0286.456_dice_entity/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0286.456_dice_entity/tick/1.trigger

# 回転
    tp @s[scores={CU.MoveTime=..19}] ~ ~ ~ ~10 ~
    tp @s[scores={CU.MoveTime=20..}] ~ ~ ~ ~30 ~

# 数tick後
    execute if score @s CU.MoveTime matches 1 run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:17,CustomName:'{"text":" Alea jacta est! ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if score @s CU.MoveTime matches 1 run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:18,CustomName:'{"text":" Alea jacta est! ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if score @s CU.MoveTime matches 1 run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:19,CustomName:'{"text":" Alea jacta est! ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if score @s CU.MoveTime matches 20 run function asset:mob/0286.456_dice_entity/tick/event/start
    execute if score @s CU.MoveTime matches 28 run playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 1.5 1.7
    execute if score @s CU.MoveTime matches 30 positioned ~ ~1.7 ~ unless entity @e[type=#lib:living,type=!player,distance=..20,sort=nearest,limit=1] run scoreboard players add @s CU.MoveCount 1
    execute if score @s CU.MoveTime matches 30 positioned ~ ~1.7 ~ facing entity @e[type=#lib:living,type=!player,distance=..20,sort=nearest,limit=1] eyes run function asset:mob/0286.456_dice_entity/tick/event/shoot_beam

# パーティクル
    execute positioned ~ ~1.7 ~ run particle minecraft:electric_spark ^ ^ ^1 0 0 0 0 1 force
    execute positioned ~ ~1.7 ~ run particle minecraft:electric_spark ^ ^ ^-1 0 0 0 0 1 force

# スコア加算
    scoreboard players add @s CU.MoveTime 1
    scoreboard players set @s[scores={CU.MoveTime=31..}] CU.MoveTime 25

# 消滅
    execute if score @s[scores={CU.RandomCount=4}] CU.MoveCount matches 4.. run function asset:mob/0286.456_dice_entity/tick/event/death
    execute if score @s[scores={CU.RandomCount=5}] CU.MoveCount matches 5.. run function asset:mob/0286.456_dice_entity/tick/event/death
    execute if score @s[scores={CU.RandomCount=6}] CU.MoveCount matches 6.. run function asset:mob/0286.456_dice_entity/tick/event/death