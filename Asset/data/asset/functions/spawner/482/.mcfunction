#> asset:spawner/482/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:192,Y:182,Z:-171}] in overworld positioned 192 182 -171 if entity @p[distance=..40] run function asset:spawner/482/register