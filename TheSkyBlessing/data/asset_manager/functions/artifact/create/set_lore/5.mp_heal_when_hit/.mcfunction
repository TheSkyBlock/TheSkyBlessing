#> asset_manager:artifact/create/set_lore/5.mp_heal_when_hit/
#
#
#
# @within function asset_manager:artifact/create/set_lore/

# マクロを使ってSuffixを表示しないようにする
    data modify storage asset:artifact Temp.Val set from storage asset:artifact MPHealWhenHit
    function asset_manager:artifact/create/set_lore/5.mp_heal_when_hit/generate with storage asset:artifact Temp

# リセット
    data remove storage asset:artifact Temp