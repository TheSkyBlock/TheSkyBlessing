#> asset:mob/0264.dark_summoner/tick/event/cast_start
#
#
#
# @within function asset:mob/0264.dark_summoner/tick/2.tick

# SFX
    playsound minecraft:entity.enderman.ambient player @a ~ ~ ~ 1.5 0.7
    playsound minecraft:entity.phantom.ambient player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1 1.2
    particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 1 50

# タグ付与
    tag @s add 7C.CastStart