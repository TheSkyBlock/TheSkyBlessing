#> asset:sacred_treasure/0687.soaring_wing/19.melee_recursion_attack
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/18.melee_recursion

# 無属性ダメージ
    data modify storage lib: Argument.Damage set value 15f
    data modify storage lib: Argument.AttackType set value "Physical"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..1.5] run function lib:damage/
    data remove storage lib: Argument