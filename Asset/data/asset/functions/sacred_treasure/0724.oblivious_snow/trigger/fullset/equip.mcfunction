#> asset:sacred_treasure/0724.oblivious_snow/trigger/fullset/equip
#
# フルセット時の処理
#
# @within function
#   asset:sacred_treasure/0724.oblivious_snow/trigger/3.main
#   asset:sacred_treasure/0725.oblivious_snow/trigger/3.main
#   asset:sacred_treasure/0726.oblivious_snow/trigger/3.main
#   asset:sacred_treasure/0727.oblivious_snow/trigger/3.main

# 演出
    particle snowflake ~ ~1.2 ~ 1 0.6 1 0.2 250 normal @a
    particle snowflake ~ ~1.2 ~ 1 0.6 1 0.4 250 normal @a
    playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.5 0
    playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.0 0
    playsound ogg:mob.vex.death2 player @a ~ ~ ~ 0.5 0.4
    playsound ogg:mob.vex.idle3 player @a ~ ~ ~ 0.5 0.2

# フルセットTag
    tag @s add K4.Fullset

# 水攻撃+25%
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    data modify storage api: Argument.Amount set value 0.25
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/water/add

# mp回復+8%
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add

# 体力回復量-5%
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/heal/add

# 被回復量-10%
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    #function api:player_modifier/attack/receive_heal/add

# ループ開始
    schedule function asset:sacred_treasure/0724.oblivious_snow/trigger/fullset/loop 1t replace