#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/init
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/slash5

# ID付与
    scoreboard players operation @s SA.UserID = @p[tag=this] UserID

# 向きを揃える
    execute at @p[tag=this] run tp @s ~ ~ ~ ~ ~

# スコアセット
    scoreboard players set @s SA.Tick 0

# タグ削除
    tag @s remove SA.ShotEmitterInit