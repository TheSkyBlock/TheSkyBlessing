#> asset:mob/0021.demon_eye/tick/event/suicide
#
# 自滅する
#
# @within function asset:mob/0021.demon_eye/tick/2.tick

# VFX
    playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1.5
    particle reverse_portal ~ ~1.68 ~ 0.25 0.25 0.25 0.5 20 force @a[distance=..40]

# 消える
    tp @s ~ -100 ~
    kill @s