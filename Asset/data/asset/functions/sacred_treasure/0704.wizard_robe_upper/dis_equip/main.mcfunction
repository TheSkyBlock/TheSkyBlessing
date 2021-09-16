#> asset:sacred_treasure/0704.wizard_robe_upper/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0704.wizard_robe_upper/dis_equip/

# 魔法ダメージ量、魔法耐性、MP回復量の補正の削除

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
# 補正の削除
    function api:player_modifier/attack/magic/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
# 補正の削除
    function api:player_modifier/defense/magic/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
# 補正の削除
    function api:player_modifier/mp_regen/remove

