#> asset:mob/0316.blazing_mine/tick/event/bomb/shrink
#
# 縮む
#
# @within function asset:mob/0316.blazing_mine/tick/event/bomb/tick

# サイズ変更
    data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{scale:[1f,1f,1f],translation:[0f,0.5f,0f]}}

# サウンド
    playsound minecraft:block.note_block.hat hostile @a ~ ~ ~ 1.5 1.5