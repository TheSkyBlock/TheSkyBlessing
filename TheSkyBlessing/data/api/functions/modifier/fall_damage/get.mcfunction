#> api:modifier/fall_damage/get
#
#
#
# @input as player
# @output storage api:
#   Return.FallDamage : double
# @api

function oh_my_dat:please
data remove storage api: Return.FallDamage
data modify storage api: Return.FallDamage set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.FallDamage