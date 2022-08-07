#> asset:mob/0301.sinful_thoughts/tick/common/thunder
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/**

# 演出
    particle dust 1000000000 1000000000 1000000000 1 ~ ~3 ~ 0.3 3 0.3 0 50
    particle dust 0 0 0 1 ~ ~5 ~ 0.7 5 0.7 1 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 8
    particle minecraft:large_smoke ~ ~ ~ 0.3 0 0.3 0.4 50

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.7 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 24f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] at @s run function lib:damage/
# リセット
    function lib:damage/reset