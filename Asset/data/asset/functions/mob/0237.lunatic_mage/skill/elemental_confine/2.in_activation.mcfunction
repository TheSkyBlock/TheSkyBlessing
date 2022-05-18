#> asset:mob/0237.lunatic_mage/skill/elemental_confine/2.in_activation
#
# 水の檻のコマンドだよ
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 6L.Tick
# 5tickごとに水の檻を表示
    scoreboard players operation $Interval Temporary %= $6 Const
    execute positioned ~ ~-2 ~ if score $Interval Temporary matches 0 rotated 0 0 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/3.water_jail

# 外にプレイヤーがいる場合、最大5人までを対象とし、それなりの頻度で雷を落とし続ける
    scoreboard players operation $Interval Temporary = @s 6L.Tick
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 if entity @a[gamemode=!spectator,distance=9..30] at @a[gamemode=!spectator,distance=9..30,sort=random,limit=5] positioned ~ ~0.2 ~ run function asset:mob/0237.lunatic_mage/magic_summon/thunder

# リセット
    scoreboard players reset $Interval Temporary

# もしもなんらかの理由で移動した場合対策でMarkerから離れた場合戻る positioned asが入っているのは移動した際の向き保存のため
    execute positioned ~ ~-2 ~ unless entity @e[type=marker,tag=6L.SpawnPoint,distance=..0.01,sort=nearest,limit=1] positioned as @e[type=marker,tag=6L.SpawnPoint,distance=..50,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# エンパをkill
    execute if entity @e[type=ender_pearl,tag=!Projectile,distance=5.5..9] run kill @e[type=ender_pearl,tag=!Projectile,distance=5.5..9]