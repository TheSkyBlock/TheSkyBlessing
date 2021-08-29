#> asset:sacred_treasure/0687.soaring_wing/8.fullset_flying
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/2.check_condition

# 演出
   particle sweep_attack ^ ^ ^ 0.4 0.4 0.4 0 1 normal @a
    particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 1 normal @a
   playsound entity.wither.shoot master @a ~ ~ ~ 0.075 2 0

# 飛行中のみ耐性を得る
    effect give @s resistance 1 1 true

# 飛行していない検知のためのスコア
    scoreboard players set @s J3.NotFlying 1

# 敵がいればダメージ
    execute if entity @e[type=#lib:living,type=!player,distance=..3] run function asset:sacred_treasure/0687.soaring_wing/9.flying_attack