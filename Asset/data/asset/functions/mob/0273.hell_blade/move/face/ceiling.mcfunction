#> asset:mob/0273.hell_blade/move/face/ceiling
#
#
#
# @within function asset:mob/0273.hell_blade/move/face/

# 位置調整
    execute at @s[tag=7L.FaceWallUp] run tp @s ^ ^-.875 ^.25
    execute at @s[tag=7L.FaceWallDown] run tp @s ~ ~-1.125 ~

# タグ更新
    tag @s remove 7L.FaceCheck
    tag @s remove 7L.FaceWallUp
    tag @s remove 7L.FaceWallDown
    tag @s add 7L.FaceCeiling
