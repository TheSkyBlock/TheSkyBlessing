#> asset:mob/0217.medousa_eye/tick/06.schedule_loop
#
#
#
# @within function
#   asset:mob/0217.medousa_eye/tick/05.beam_hit
#   asset:mob/0217.medousa_eye/tick/06.schedule_loop
#   asset:mob/0217.medousa_eye/rejoin_process

# プレイヤー
    execute as @a[tag=61.Stone] at @s run function asset:mob/0217.medousa_eye/tick/07.stone_time

# スケジュールループ
    execute if entity @a[tag=61.Stone,limit=1] run schedule function asset:mob/0217.medousa_eye/tick/06.schedule_loop 1t replace