#> asset:spawner/225/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:15,Y:130,Z:15}] in overworld positioned 15 130 -81 if entity @p[distance=..40] run function asset:spawner/225/register