#> asset:mob/0078.messenger_of_thunder/tick/4.skill_branch
#
# スキルを分岐して実行するfunction
#
# @within function asset:mob/0078.messenger_of_thunder/tick/2.tick

# スキル1
    execute if entity @s[scores={26.SkillSelect=0}] run function asset:mob/0078.messenger_of_thunder/skill/1/1

# スキル2


# スキル3


# スキル4


# スコア
    scoreboard players add @s 26.Tick 1