#> asset:sacred_treasure/1022.brave_wand/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/1022.brave_wand/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# スコア持ってないなら0に
    execute unless entity @s[scores={SE.Combo=0..}] run scoreboard players set @s SE.Combo 0

# 攻撃
    execute if entity @s[scores={SE.Combo=0}] run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_spread
    execute if entity @s[scores={SE.Combo=1}] run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_spread
    execute if entity @s[scores={SE.Combo=2}] run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_spread

# コンボカウント
    scoreboard players set @s SE.Wait 13
    scoreboard players add @s SE.Combo 1
    scoreboard players set @s[scores={SE.Combo=3..}] SE.Combo 0

# スケジュール開始
    #schedule function asset:sacred_treasure/0976.brave_sword/trigger/slash_entity/1.tick 1t replace
    #schedule function asset:sacred_treasure/0976.brave_sword/trigger/combo/1.tick 1t replace
