#> asset:sacred_treasure/0269.holy_symbol_lv.10/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0269.holy_symbol_lv.10/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["7H.HolySymbol","Object","Uninterferable"]}
    function asset:sacred_treasure/0269.holy_symbol_lv.10/recursive