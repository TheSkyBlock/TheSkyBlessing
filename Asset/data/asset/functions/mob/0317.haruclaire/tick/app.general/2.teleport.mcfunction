#> asset:mob/0317.haruclaire/tick/app.general/2.teleport
#
# 汎用処理 移動する
#
# @within asset:mob/0317.haruclaire/tick/**

# 壁の中ではない場合のみ移動
    execute if block ~ ~ ~ #lib:no_collision run tp @s ~ ~ ~ ~ ~