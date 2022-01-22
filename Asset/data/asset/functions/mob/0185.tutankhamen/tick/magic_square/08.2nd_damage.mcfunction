#> asset:mob/0185.tutankhamen/tick/magic_square/08.2nd_damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/magic_square/03.2nd_square

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 25f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# デスログ
    data modify storage lib: Argument.DeathMessage set value ['{"translate": "%1$sは%2$sの溢れる魔力に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}']
# 対象
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function lib:damage/
# リセット
    data remove storage lib: Argument