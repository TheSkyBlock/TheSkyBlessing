#> asset:mob/1013.tultaria_shot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1013.tultaria_shot/tick/1.trigger

# 再帰カウントが0なら弾速からセット
    scoreboard players operation @s S5.MoveTimesPerTick = @s S5.Speed

# 移動
    execute if score @s S5.Tick matches 10.. run function asset:mob/1013.tultaria_shot/tick/3.move

# Tick加算
    scoreboard players add @s S5.Tick 1
