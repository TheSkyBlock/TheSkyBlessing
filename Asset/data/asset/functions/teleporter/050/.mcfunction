#> asset:teleporter/050/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-68,Y:156,Z:140}] in overworld positioned -68 156 140 if entity @p[distance=..40] run function asset:teleporter/050/register