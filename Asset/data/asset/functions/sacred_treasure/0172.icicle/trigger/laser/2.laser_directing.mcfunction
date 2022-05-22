#> asset:sacred_treasure/0172.icicle/trigger/laser/2.laser_directing
#
#
#
# @within function asset:sacred_treasure/0172.icicle/trigger/laser/1.laser

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.0
    data modify storage lib: Argument.Spread set value 2.3

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] feet as @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] run function asset:sacred_treasure/0172.icicle/trigger/laser/particle_specal

# 前方拡散キル
    kill @e[type=marker,tag=SpreadMarker,distance=..50]