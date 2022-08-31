#> asset:mob/1004.tultaria/tick/wait_time/phase1/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!RW.InAction] RW.Tick matches 40.. if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/1004.tultaria/tick/3.skill_select

# プレイヤーが周囲にいないのに時間がきてしまった場合。スコアを戻す
    execute if score @s RW.Tick matches 40.. unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s RW.Tick 0

# 選択したスキル発動
    execute if entity @s[tag=RW.InAction] run function asset:mob/1004.tultaria/tick/4.skill_active

# こっち向く
    execute if entity @s[tag=!RW.InAction] unless entity @s[scores={RW.FakeInertia=0..}] facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# モデルの向き
    # 頭
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelHead,distance=..2] facing entity @p feet run tp @s ~ ~ ~ ~ ~
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelHead,distance=..2] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

    # 体
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelBody,distance=..2] facing entity @p eyes run tp @s ~ ~ ~ ~-45 ~

# 移動タグ付きなら移動
    execute if entity @s[tag=RW.Move] run function asset:mob/1004.tultaria/tick/move/teleport/move_to_marker

# 嘘慣性を解決
    scoreboard players remove @s[scores={RW.FakeInertia=1..}] RW.FakeInertia 1
    execute if entity @s[scores={RW.FakeInertia=0..}] positioned ~ ~-0.2 ~ run particle soul_fire_flame ^ ^ ^ 0 0 0 0 0 force @a[distance=..30]
    execute if entity @s[scores={RW.FakeInertia=13..}] run tp @s ^ ^ ^0.8
    execute if entity @s[scores={RW.FakeInertia=9..12}] run tp @s ^ ^ ^0.5
    execute if entity @s[scores={RW.FakeInertia=5..8}] run tp @s ^ ^ ^0.3
    execute if entity @s[scores={RW.FakeInertia=1..4}] run tp @s ^ ^ ^0.1
    execute if entity @s[scores={RW.FakeInertia=0}] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
    scoreboard players reset @s[scores={RW.FakeInertia=0}] RW.FakeInertia

# マーカーまでたどり着いたら移動をやめる
    execute if entity @s[scores={RW.FakeInertia=0..}] unless block ~ ~-1 ~ #lib:no_collision run scoreboard players reset @s RW.FakeInertia

