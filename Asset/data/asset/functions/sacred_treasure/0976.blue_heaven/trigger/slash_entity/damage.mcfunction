#> asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/damage
#
# ヒット
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/2.main

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 100.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @a[tag=R4.OwnerPlayer] run function lib:damage/modifier
# 範囲5m以内のゾンビを対象に
    function lib:damage/

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.2
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @s at @s facing entity @p[tag=R4.OwnerPlayer] feet rotated ~ ~25 run function lib:motion/

# リセット
    function lib:damage/reset
    data remove storage lib: Argument