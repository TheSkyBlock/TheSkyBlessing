#> asset:mob/0284.meteor_rain_entity/tick/event/explosion
#
#
#
# @within function asset:mob/0284.meteor_rain_entity/tick/event/move

# 効果音
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1.5 1.7
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 2 0.7

# 爆発
    particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
    particle flame ~ ~ ~ 1.5 1.5 1.5 0 20

# ダメージ
    # タグ付与
        tag @s add 7W.This
    # ダメージ設定
        # 与えるダメージ
            data modify storage lib: Argument.Damage set value 1000.0f
        # 属性
            data modify storage lib: Argument.AttackType set value "Magic"
            data modify storage lib: Argument.ElementType set value "Fire"
        # ダメージ
            execute as @a if score @s UserID = @e[type=armor_stand,tag=7W.This,distance=..1,limit=1] 7W.UserID run function lib:damage/modifier
            execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..4] run function lib:damage/
            execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..4] run function lib:damage/
    # リセット
        function lib:damage/reset

# 消滅
    kill @s

