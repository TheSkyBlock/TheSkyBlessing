#> asset:sacred_treasure/0985.noname/trigger/skill_list/skill_3/skill
#
#
#
# @within function asset:sacred_treasure/0985.noname/trigger/skill_list/skill_active

# スコアを増やす
    execute if score @s RD.Time matches 1.. run scoreboard players add @s RD.Time 1

# 剣を振る
    execute if score @s RD.Time matches 2 anchored eyes positioned ~ ~ ~ run function asset:sacred_treasure/0985.noname/trigger/slash/slash3
    execute if score @s RD.Time matches 2 run function asset:sacred_treasure/0985.noname/trigger/slash

# 剣を振る
    execute if score @s RD.Time matches 4 anchored eyes positioned ~ ~ ~ run function asset:sacred_treasure/0985.noname/trigger/slash/slash4
    execute if score @s RD.Time matches 4 run function asset:sacred_treasure/0985.noname/trigger/slash

# 剣を振る
    execute if score @s RD.Time matches 6 anchored eyes positioned ~ ~ ~ run function asset:sacred_treasure/0985.noname/trigger/slash/slash5
    execute if score @s RD.Time matches 6 run function asset:sacred_treasure/0985.noname/trigger/slash

# 剣を振る
    execute if score @s RD.Time matches 8 anchored eyes positioned ~ ~ ~ run function asset:sacred_treasure/0985.noname/trigger/slash/slash6
    execute if score @s RD.Time matches 8 run function asset:sacred_treasure/0985.noname/trigger/slash


# スコアを消す
    execute if score @s RD.Time matches 10 run scoreboard players reset @s RD.Time