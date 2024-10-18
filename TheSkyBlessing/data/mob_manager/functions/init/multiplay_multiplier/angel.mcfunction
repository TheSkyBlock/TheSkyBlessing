#> mob_manager:init/multiplay_multiplier/angel
#
#
#
# @input score MobHealthMax
# @output score MobHealthMax
# @within function asset_manager:mob/triggers/summon/set_data

#> Val
# @private
    #declare score_holder $NearbyPlayerCount
    #declare score_holder $MultiplayMultiplierBase
    #declare score_holder $MultiplayMultiplier

# ベース倍率 0.40(e2)
    scoreboard players set $MultiplayMultiplierBase Temporary 40
# マルチ補正倍率 0.60(e2)
    scoreboard players set $MultiplayMultiplier Temporary 60
# マルチ補正倍率の計算 0.60(e2) * N(e0) + 0.40(e2)
    scoreboard players operation $MultiplayMultiplier Temporary *= $PlayerCount Global
    scoreboard players operation $MultiplayMultiplier Temporary += $MultiplayMultiplierBase Temporary
# マルチ補正倍率の保存
    scoreboard players operation @s MobMaxHealthMultiplier = $MultiplayMultiplier Temporary
# マルチ補正の適用 MobHealthMax (e2) = MobHealthMax (e0) * $MultiplayMultiplier (e2)
    scoreboard players operation @s MobHealthMax *= $MultiplayMultiplier Temporary
# リセット
    scoreboard players reset $NearbyPlayerCount Temporary
    scoreboard players reset $MultiplayMultiplier Temporary
    scoreboard players reset $MultiplayMultiplierBase Temporary
