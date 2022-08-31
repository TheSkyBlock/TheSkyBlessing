#> asset:sacred_treasure/0726.oblivious_snow/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0726.oblivious_snow/trigger/dis_equip/

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,726,4]
    function api:player_modifier/defense/water/remove

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,726,4]
    function api:player_modifier/attack/water/remove

# mp回復
    data modify storage api: Argument.UUID set value [I;1,1,726,4]
    function api:player_modifier/mp_regen/remove

# 体力回復量
    data modify storage api: Argument.UUID set value [I;1,1,726,4]
    function api:player_modifier/attack/physical/remove
