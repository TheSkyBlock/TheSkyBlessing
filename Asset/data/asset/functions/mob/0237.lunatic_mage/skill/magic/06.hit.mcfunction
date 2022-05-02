#> asset:mob/0237.lunatic_mage/skill/magic/06.hit
#
# ヒット処理だよ
#
# @within function asset:mob/0237.lunatic_mage/skill/magic/03.shoot_beam

# ダメージ設定
    data modify storage lib: Argument.Damage set value 50f
    data modify storage lib: Argument.AttackType set value "Magic"
    execute as @e[type=zombie,tag=this,distance=..50,limit=1] run function lib:damage/modifier
    function lib:damage/
# リセット
    data remove storage lib: Argument

# Tag削除
    tag @s remove LandingTarget