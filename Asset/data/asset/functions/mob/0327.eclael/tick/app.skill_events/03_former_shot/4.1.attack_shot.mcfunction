#> asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/4.1.attack_shot
#
# アニメーションのイベントハンドラ 前半・射撃 発射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.main

# TODO：演出を練る
# 演出
    execute as @a at @s facing entity @e[type=wither_skeleton,scores={MobID=327},distance=..40,limit=1] eyes positioned ^ ^ ^3 run playsound entity.wither.shoot hostile @s ~ ~ ~ 0.6 1.8
    execute as @a at @s facing entity @e[type=wither_skeleton,scores={MobID=327},distance=..40,limit=1] eyes positioned ^ ^ ^3 run playsound item.trident.riptide_1 hostile @s ~ ~ ~ 0.4 1.8
    execute as @a at @s facing entity @e[type=wither_skeleton,scores={MobID=327},distance=..40,limit=1] eyes positioned ^ ^ ^3 run playsound item.trident.riptide_1 hostile @s ~ ~ ~ 0.4 1.8
    particle flash ~ ~ ~ 0 0 0 0 1

# 弾召喚
    data modify storage api: Argument.ID set value 328
    execute facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet run function api:mob/summon

execute unless entity @e[type=marker,scores={MobID=328}] run say 弾がいない