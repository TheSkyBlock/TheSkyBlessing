#> asset:trader/0005.potion_merchant/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:-2,Y:21,Z:-69}] positioned -2 21 -69 if entity @p[distance=..48] run function asset:trader/0005.potion_merchant/register/register