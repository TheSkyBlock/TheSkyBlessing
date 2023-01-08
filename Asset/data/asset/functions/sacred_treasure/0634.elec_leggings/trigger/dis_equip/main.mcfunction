#> asset:sacred_treasure/0634.elec_leggings/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0634.elec_leggings/trigger/dis_equip/

# 雷耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,634,4]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# 雷耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,634,4]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add

# 演出
    playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.1 0

# 一式効果削除
    execute if entity @s[tag=HL.Fullset] run function asset:sacred_treasure/0633.elec_armor/trigger/5.fullset_dis_equip
