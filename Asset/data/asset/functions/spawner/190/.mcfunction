#> asset:spawner/190/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:105,Y:160,Z:-116}] in overworld positioned 105 160 -116 if entity @p[distance=..40] run function asset:spawner/190/register