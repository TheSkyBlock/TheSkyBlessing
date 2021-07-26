#> api:player_modifier/core/defense/magic/add
#
#
#
# @within function api:player_modifier/defense/magic/add

# UserStorage呼び出し
    function oh_my_dat:please
# 無ければ入れる
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Magic[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Magic set value []
# 追加する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Magic append value {}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Magic[-1].UUID set from storage api: Argument.UUID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Magic[-1].Amount set from storage api: Argument.Amount
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Magic[-1].Operation set from storage api: Argument.Operation
# データの更新
    data modify storage api: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Magic
    function api:player_modifier/core/common/update_modifier/
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Defense.Magic set from storage api: Modifier
# リセット
    data remove storage api: Modifiers
    data remove storage api: Modifier