#> asset:sacred_treasure/0252.void_transaction/3.1.initiation
#
# タイマーの初期設定とeffect
#
# @within function asset:sacred_treasure/0252.void_transaction/3.main
#> private
# @private
    #declare tag Void

# 初期タイマーの設定
    scoreboard players set @s 0252.Timer 2400

# 絶大な力
    tag @s add Void
    effect give @s speed 120 3 true
    effect give @s strength 120 3 true
    effect give @s jump_boost 120 3 true
    effect give @s regeneration 120 3 true
    effect give @s fire_resistance 120 3 true
    effect give @s resistance 120 3 true
    effect give @s invisibility 120 3 true
    effect give @s night_vision 120 3 true
    effect give @s water_breathing 120 3 true
    effect give @s absorption 120 3 true
    effect give @s health_boost 120 3 true
    effect give @s slow_falling 120 3 true

# 追加演出
    playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~