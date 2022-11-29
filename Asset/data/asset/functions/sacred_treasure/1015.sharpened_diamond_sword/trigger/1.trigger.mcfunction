#> asset:sacred_treasure/1015.sharpened_diamond_sword/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1015} run function asset:sacred_treasure/1015.sharpened_diamond_sword/trigger/2.check_condition