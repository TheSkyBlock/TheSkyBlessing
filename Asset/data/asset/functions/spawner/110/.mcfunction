#> asset:spawner/110/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:172,Y:36,Z:248}] in overworld positioned 172 36 248 if entity @p[distance=..40] run function asset:spawner/110/register