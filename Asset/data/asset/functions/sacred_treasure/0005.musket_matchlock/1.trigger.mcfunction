#> asset:sacred_treasure/0005.musket_matchlock/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:5} run function asset:sacred_treasure/0005.musket_matchlock/2.check_condition