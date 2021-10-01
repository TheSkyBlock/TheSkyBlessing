#> asset:sacred_treasure/0650.prominence_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0650.prominence_helm/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,650,6]
# 補正の削除
    function api:player_modifier/attack/fire/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,650,6]
# 補正の削除
    function api:player_modifier/defense/physical/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,650,6]
# 補正の削除
    function api:player_modifier/defense/magic/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,650,6]
# 補正の削除
    function api:player_modifier/defense/fire/remove

# フルセット削除
    execute if entity @s[tag=I3.Fullset] run function asset:sacred_treasure/0651.prominence_armor/5.fullset_dis_equip