#> asset:sacred_treasure/0441.awaited_opportunity/3.3.attack
#
# 破壊っわす
#
# @within function asset:sacred_treasure/0441.awaited_opportunity/3.main

# 演出
    particle minecraft:block redstone_block ~ ~1 ~ 0.1 0.1 0.1 1 10

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 16.5f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
# 補正function
    function lib:damage/modifier
# 対象に
    function lib:damage/
# リセット
    data remove storage lib: Argument
