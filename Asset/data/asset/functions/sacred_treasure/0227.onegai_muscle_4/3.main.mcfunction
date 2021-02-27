#> asset:sacred_treasure/0227.onegai_muscle_4/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0227.onegai_muscle_4/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    # 体力を変更
        scoreboard players set $Set Lib 100
        function lib:score_to_health_wrapper/set
    # 効果
        effect give @s resistance 30 3 true
    # 演出
        playsound entity.player.hurt player @a ~ ~ ~ 1 1
        playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 1 2
        particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0 30 normal @s
    #リセット
        scoreboard players reset @s Temporary