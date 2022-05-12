#> asset:mob/0285.meteor_rain_emitter/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0285.meteor_rain_emitter/summon/1.trigger

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 285
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false

# ユーザーIDを渡す
    scoreboard players operation @e[type=marker,tag=MobInit,distance=..0.01] 7X.UserID = @p[tag=this] UserID
    
# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon