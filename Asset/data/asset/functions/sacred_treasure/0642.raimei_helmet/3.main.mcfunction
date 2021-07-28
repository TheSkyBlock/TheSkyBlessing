#> asset:sacred_treasure/0642.raimei_helmet/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0642.raimei_helmet/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/head

# ここから先は神器側の効果の処理を書く

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,642,6]
    # 補正値
        data modify storage api: Argument.Amount set value 0.08
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/thunder/add

#セット効果用のファンクション実行（実行はチェストプレートの方へ）


    execute if data storage asset:context id{head:642,chest:643,legs:644,feet:645} run say aaaa