#> asset:sacred_treasure/0237.schrodingers_cat/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:context idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:237} run function asset:sacred_treasure/0237.schrodingers_cat/trigger/2.check_condition