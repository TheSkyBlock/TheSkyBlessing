#> asset:mob/0146.prismarine_warrior/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0146.prismarine_warrior/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle splash ~ ~1.2 ~ 0.6 0.5 0.6 0 50 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust_color_transition 0.310 0.820 0.910 1.3 0.290 0.843 0.863 ~ ~1.2 ~ 0.5 0.4 0.5 1 30 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:entity.guardian.attack hostile @a ~ ~ ~ 0.8 1.5 0
    execute at @p[tag=Victim,distance=..6] run playsound entity.player.splash.high_speed hostile @a ~ ~ ~ 0.4 1.7 0

# バフを解除
    effect clear @p[tag=Victim,distance=..6] water_breathing
    effect clear @p[tag=Victim,distance=..6] speed
    effect clear @p[tag=Victim,distance=..6] dolphins_grace

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 30f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage set value ['{"translate": "%1$sは%2$sによって水底に沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}','{"translate": "%1$sは%2$sによって両断され海の藻屑となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}']

# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    data remove storage lib: Argument