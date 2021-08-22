#> asset:mob/0060.self_destructor/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0060.self_destructor/tick/1.trigger

# 燃えてる場合爆発
     execute if predicate lib:is_burnning run scoreboard players set @s 1O.ExploFuse 40
# 信号のあるレッドストーンパウダーに触れると爆発
     execute if block ~ ~ ~ redstone_wire unless block ~ ~ ~ redstone_wire[power=0] run scoreboard players set @s 1O.ExploFuse 40

# 自爆
  # 爆破待機
     execute if score @s 1O.ExplosionCo matches 8.. run function asset:mob/0060.self_destructor/tick/3.waiting_explosion

  # 演出
     execute if score @s 1O.ExploFuse matches 1..39 run particle smoke ~ ~1.2 ~ 0.4 0.5 0.4 0 6 normal @a

   # 爆破
     execute if score @s 1O.ExploFuse matches 40.. run function asset:mob/0060.self_destructor/tick/4.self-desruct
