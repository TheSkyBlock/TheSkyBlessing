#> asset:sacred_treasure/0709.mage_robe_lower/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのlegsに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{legs:709} run function asset:sacred_treasure/0709.mage_robe_lower/2.check_condition