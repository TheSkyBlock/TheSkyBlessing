#> asset:sacred_treasure/0358.cyfosio/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0358.cyfosio/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..10]

# 攻撃したエンティティを40回復
    data modify storage lib: Argument.Heal set value 40f
    function lib:heal/modifier
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run function lib:heal/

# リセット
    data remove storage lib: Argument