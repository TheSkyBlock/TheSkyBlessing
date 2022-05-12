#> asset:sacred_treasure/0953.meteor_rain/trigger/event/summon
#
#
#
# @within function asset:sacred_treasure/0953.meteor_rain/trigger/3.main

#> SpreadLib
# @private
#declare tag SpreadMarker

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 4.0

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker] run function lib:forward_spreader/circle

# 演出
    playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1 2
# ユーザーIDを適応
    #scoreboard players operation @e[type=armor_stand,tag=7W.Init] GX.UserID = @s GX.UserID
# ID定義
    data modify storage api: Argument.ID set value 284
# 分散させる。着弾点がまとまる
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^10 positioned ~ ~40 ~ run function api:mob/summon
# タグを消す

# 前方拡散を消す
    kill @e[type=marker,tag=SpreadMarker]