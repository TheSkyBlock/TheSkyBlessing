#> lib:forward_spreader/core/calc
#
#
#
# @within function lib:forward_spreader/core/

#> Temporary
# @private
    #declare score_holder $Temp

# Y` = Y * cos(pitch) - Z * sin(pitch)
    scoreboard players operation $Y Temporary = $VecY Temporary
    scoreboard players operation $Y Temporary *= $PitchCos Temporary
    scoreboard players operation $Temp Temporary = $VecZ Temporary
    scoreboard players operation $Temp Temporary *= $PitchSin Temporary
    scoreboard players operation $Y Temporary -= $Temp Temporary
# Z` = Y * sin(pitch) + Z * cos(pitch)
    scoreboard players operation $Z Temporary = $VecY Temporary
    scoreboard players operation $Z Temporary *= $PitchSin Temporary
    scoreboard players operation $Temp Temporary = $VecZ Temporary
    scoreboard players operation $Temp Temporary *= $PitchCos Temporary
    scoreboard players operation $Z Temporary += $Temp Temporary
    scoreboard players operation $Z Temporary /= $10000 Const
# X` = X * cos(yaw) + Z` * sin(yaw)
    scoreboard players operation $X Temporary = $VecX Temporary
    scoreboard players operation $X Temporary *= $YawCos Temporary
    scoreboard players operation $Temp Temporary = $Z Temporary
    scoreboard players operation $Temp Temporary *= $YawSin Temporary
    scoreboard players operation $X Temporary += $Temp Temporary
# Z` = Z` * cos(yaw) - X * sin(yaw)
    scoreboard players operation $Z Temporary *= $YawCos Temporary
    scoreboard players operation $Temp Temporary = $VecX Temporary
    scoreboard players operation $Temp Temporary *= $YawSin Temporary
    scoreboard players operation $Z Temporary -= $Temp Temporary
# 係数が乗算で膨れ上がってるので除算
    scoreboard players operation $X Temporary /= $10000 Const
    scoreboard players operation $Y Temporary /= $10000 Const
    scoreboard players operation $Z Temporary /= $10000 Const
# リセット
    scoreboard players reset $Temp Temporary