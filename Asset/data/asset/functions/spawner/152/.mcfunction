#> asset:spawner/152/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:428,Y:165,Z:47}] in overworld positioned 428 165 47 if entity @p[distance=..40] run function asset:spawner/152/register