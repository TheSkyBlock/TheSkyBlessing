#> asset:sacred_treasure/0724.oblivious_snow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0724.oblivious_snow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/head

# ここから先は神器側の効果の処理を書く

# メモ 水耐性10% 水攻撃+10% mp回復+8% 体力回復量-5% 被回復量-10%

# 水耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,724,6]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add

# 水攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,724,6]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/water/add

# mp回復+5%
    data modify storage api: Argument.UUID set value [I;1,1,724,6]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add

# 体力回復量-5%
    data modify storage api: Argument.UUID set value [I;1,1,724,6]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/physical/add
