#> asset:sacred_treasure/0726.fleur_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0726.fleur_leggings/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,726,4]
# 補正の削除
    function api:player_modifier/defense/magic/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,726,4]
# 補正の削除
    function api:player_modifier/defense/water/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,726,4]
# 補正の削除
    function api:player_modifier/heal/remove