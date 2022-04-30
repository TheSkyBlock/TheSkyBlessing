#> asset:sacred_treasure/0253.holy_barrier/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0253.holy_barrier/trigger/2.check_condition

#> prv
# @private
    #declare tag 71.Target

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/hotbar

# ここから先は神器側の効果の処理を書く
    # 攻撃対象にタグ付け
    tag @e[type=#lib:living,tag=!Enemy.Boss,predicate=asset:sacred_treasure/0253.holy_barrier/is_angry] add 71.Target

    # particle
    execute anchored eyes positioned ^ ^ ^1 run function asset:sacred_treasure/0253.holy_barrier/trigger/3.1.particle_barrier
    execute at @e[type=#lib:living,tag=71.Target] run function asset:sacred_treasure/0253.holy_barrier/trigger/3.2.particle_reflect

    # ダメージ設定
    data modify storage lib: Argument.Damage set value 9999f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.FixedDamage set value true
    data modify storage lib: Argument.BypassResist set value true
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=71.Target] run function lib:damage/
    data remove storage lib: Argument
