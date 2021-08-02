#> asset:sacred_treasure/0647.thorn_armor/5.fullset_hurt
#
#
#
# @within function asset:sacred_treasure/0647.thorn_armor/4.damage_trigger

# 演出

    # 相手に赤いdust
        execute if entity @e[tag=Attacker,distance=..20] as @e[tag=Attacker,distance=..20] at @s run particle falling_dust nether_wart_block ~ ~1.2 ~ 0.5 0.5 0.5 0 20 normal @a

    # 再帰使用：相手に棘を伸ばす演出
        execute if entity @e[tag=Attacker,distance=..20] positioned ~ ~1.5 ~ facing entity @e[tag=Attacker,distance=..20] eyes run function asset:sacred_treasure/0647.thorn_armor/6.exetend_thorn
        scoreboard players reset @s HZ.Tick

# 被ダメージ時体力回復

    # 回復する量 = 5
        data modify storage lib: Argument.Heal set value 5.0f
# 補正function
    function lib:heal/modifier
# 自身を対象に
    function lib:heal/
# リセット
    data remove storage lib: Argument

# MP10消費
    scoreboard players set $Fluctuation Lib -10
    execute as @s run function lib:mp/fluctuation

