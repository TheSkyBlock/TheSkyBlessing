#> asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/3.glow
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/1.quiz

# 発光
    item replace entity @s armor.head with jack_o_lantern{CustomModelData:20017}
    tag @s add 1N.Glow
    effect clear @s slowness
    effect give @s speed 5 6 true

# 演出
    particle minecraft:witch ~ ~1 ~ 0 0 0 0.7 100
    playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 2

# キル
    tp @e[type=zombie,scores={MobID=224},distance=..30,limit=8] ~ -100 ~