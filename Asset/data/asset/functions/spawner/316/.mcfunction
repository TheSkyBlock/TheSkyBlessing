#> asset:spawner/316/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-125,Y:166,Z:-62}] in overworld positioned -125 166 -62 if entity @p[distance=..40] run function asset:spawner/316/register