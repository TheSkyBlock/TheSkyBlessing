#> asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/main
#
# 演出やバフなどを行う
#
# @within function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/loop

# バフ
    execute unless entity @s[predicate=!lib:weather/is_raining,predicate=!lib:weather/is_thundering,predicate=!lib:is_in_water/include_flowing] run effect give @s conduit_power 1 0 true
    execute unless entity @s[predicate=!lib:weather/is_raining,predicate=!lib:weather/is_thundering,predicate=!lib:is_in_water/include_flowing] run effect give @s dolphins_grace 1 0 true
    execute unless entity @s[predicate=!lib:weather/is_raining,predicate=!lib:weather/is_thundering,predicate=!lib:is_in_water/include_flowing] run effect give @s speed 1 1 true

# 演出
    particle dust 0.439 0.737 1 0.5 ~ ~1.7 ~ 0.75 0.2 0.75 0 1 normal
    particle dust 0.494 0.545 1 0.5 ~ ~1.2 ~ 0.75 0.3 0.75 0 2 normal
    particle dust 0.686 0.49 1 0.5 ~ ~0.4 ~ 0.75 0.3 0.75 0 1 normal
    particle dust 1 0.549 1 0.5 ~ ~0.2 ~ 0.75 0.1 0.75 0 1 normal

# スケジュールループ
    schedule function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/loop 1t replace