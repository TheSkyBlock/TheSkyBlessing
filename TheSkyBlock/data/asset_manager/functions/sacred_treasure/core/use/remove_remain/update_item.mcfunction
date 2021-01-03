#> asset_manager:sacred_treasure/core/use/remove_remain/update_item
#
#
#
# @within function asset_manager:sacred_treasure/core/use/remove_remain/

# Name更新処理
    data modify storage asset:sacred_treasure Name set from storage asset:sacred_treasure Item.tag.TSB.rawName
    data remove storage asset:sacred_treasure Item.tag.display.Name
    data remove storage asset:sacred_treasure Item.Slot
    execute store result score $RemainMAX Temporary run data get storage asset:sacred_treasure Item.tag.TSB.RemainingCountMAX
    loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/core/get_name/has_remain
    data modify block 10000 0 10000 Items[0] merge from storage asset:sacred_treasure Item
# replace
    execute if data storage asset:sacred_treasure {TargetSlot:"mainhand"} run loot replace entity @s weapon.mainhand 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:sacred_treasure {TargetSlot:"offhand"} run loot replace entity @s weapon.offhand 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:sacred_treasure {TargetSlot:"feet"} run loot replace entity @s armor.feet 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:sacred_treasure {TargetSlot:"legs"} run loot replace entity @s armor.legs 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:sacred_treasure {TargetSlot:"chest"} run loot replace entity @s armor.chest 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:sacred_treasure {TargetSlot:"head"} run loot replace entity @s armor.head 1 mine 10000 0 10000 debug_stick
# リセット
    data remove storage asset:sacred_treasure Name