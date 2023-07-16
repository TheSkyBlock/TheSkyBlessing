#> asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/4.1.attack_swing
#
# アニメーションのイベントハンドラ 杖モード・杖殴り なぎ払い攻撃判定
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/1.main

# TODO：演出を練る
# 演出
    # particle dust 1 1000000000 1000000000 1 ~ ~1.2 ~ 0 1 0 1 10 normal @a
    # particle dust 1 1000000000 1000000000 1 ~ ~0.6 ~ 0.1 0.5 0.1 1 10 normal @a
    # particle dust 1 1000000000 1000000000 1 ~ ~0 ~ 0.4 0.25 0.4 1 10 normal @a
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2


# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 1f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset