#> asset:spawner/087/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-90,Y:38,Z:124}] in overworld positioned -90 38 124 if entity @p[distance=..40] run function asset:spawner/087/register