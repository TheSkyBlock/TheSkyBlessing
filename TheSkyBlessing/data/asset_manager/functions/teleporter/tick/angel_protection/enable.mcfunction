#> asset_manager:teleporter/tick/angel_protection/enable
#
#
#
# @within function asset_manager:teleporter/tick/global

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.AngelProtection set value true
function asset_manager:teleporter/common/increment_activation_state_version
