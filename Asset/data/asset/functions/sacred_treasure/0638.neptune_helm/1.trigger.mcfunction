#> asset:sacred_treasure/0638.neptune_helm/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:638} run function asset:sacred_treasure/0638.neptune_helm/2.check_condition