#> asset:mob/1004.tultaria/tick/skill/4.off_coordinate_attack/3.summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/4.off_coordinate_attack/2.first_tick

# AECを召喚
    summon area_effect_cloud ^ ^ ^ {CustomNameVisible:0b,Particle:"block air",Duration:29,Tags:["Object","RW.OffCoordinateMarker"]}
# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 1