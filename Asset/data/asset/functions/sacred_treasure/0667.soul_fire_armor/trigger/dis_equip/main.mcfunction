#> asset:sacred_treasure/0667.soul_fire_armor/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0667.soul_fire_armor/trigger/dis_equip/

# 演出
    execute if entity @s[tag=!IG.Fullset] positioned ~ ~0.2 ~ run function asset:sacred_treasure/0664.soul_fire_armor/trigger/particle2
    playsound block.fire.ambient player @a ~ ~ ~ 1.5 0.8 0
    playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    playsound ogg:mob.vex.idle1 player @a ~ ~ ~ 1 0 0

# 物理耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    function api:player_modifier/defense/physical/remove

# 火耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    function api:player_modifier/defense/fire/remove

# 火攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    function api:player_modifier/attack/fire/remove

# 魔法耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    function api:player_modifier/mp_regen/remove

# 魔法耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    function api:player_modifier/defense/magic/remove

# 最大体力-10%
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-029b00000003

# フルセット解除
    execute if entity @s[tag=IG.Fullset] run function asset:sacred_treasure/0664.soul_fire_armor/trigger/fullset/fullset_dis_equip