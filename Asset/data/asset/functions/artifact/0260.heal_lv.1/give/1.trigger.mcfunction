#> asset:artifact/0260.heal_lv.1/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:260} run function asset:artifact/0260.heal_lv.1/give/2.give
