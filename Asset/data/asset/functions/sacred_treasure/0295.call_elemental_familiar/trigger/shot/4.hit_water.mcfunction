#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/4.hit_water
#
#
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/3.main

# 魔法、水属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 60.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/

# ふわり
    #effect give @s minecraft:levitation 1 1 true

# リセット
    function lib:damage/reset

# ショットを消す
    kill @e[type=armor_stand,tag=87.Shot,sort=nearest,limit=1]