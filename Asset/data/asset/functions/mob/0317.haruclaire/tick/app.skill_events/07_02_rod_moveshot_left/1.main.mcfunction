#> asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/1.main
#
# アニメーションのイベントハンドラ 杖モード・移動射撃・左
# 左方向に飛びながら射撃を行う．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：106tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/3.play_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 1..5 if entity @p[distance=..8] at @s rotated ~ 0 run tp @s ^ ^ ^-0.5
    execute if score @s 8T.AnimationTimer matches 1..5 rotated ~ 0 run tp @s ^0.2 ^ ^ ~1 ~
    execute if score @s 8T.AnimationTimer matches 6..14 rotated ~ 0 run tp @s ^0.6 ^ ^0.1 ~3 ~
    execute if score @s 8T.AnimationTimer matches 15..30 rotated ~ 0 run tp @s ^0.2 ^ ^ ~1 ~
    execute if score @s 8T.AnimationTimer matches 31..40 rotated ~ 0 run tp @s ^0.6 ^0.2 ^0.3 ~3 ~
    execute if score @s 8T.AnimationTimer matches 41..45 rotated ~ 0 run tp @s ^0.2 ^0.05 ^0.1 ~2 ~
    execute if score @s 8T.AnimationTimer matches 46..55 rotated ~ 0 run tp @s ^0.3 ^-0.1 ^0.1 ~1 ~
    execute if score @s 8T.AnimationTimer matches 56..60 rotated ~ 0 run tp @s ^0.1 ^-0.2 ^ ~1 ~
    execute if score @s 8T.AnimationTimer matches 61..73 rotated ~ 0 run tp @s ^0.2 ^0.1 ^ ~2 ~
    execute if score @s 8T.AnimationTimer matches 74..85 rotated ~ 0 run tp @s ^0.05 ^-0.05 ^ ~ ~
    execute if score @s 8T.AnimationTimer matches 86..105 rotated ~ 0 run tp @s ^0.05 ^-0.05 ^ ~ ~
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..5 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 15..30 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 41..50 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
# 演出
    execute if score @s 8T.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 31 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 61 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2

# 攻撃
    execute if score @s 8T.AnimationTimer matches 17 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/4.1.attack
    execute if score @s 8T.AnimationTimer matches 20 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/4.1.attack
    execute if score @s 8T.AnimationTimer matches 23 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/4.1.attack
    execute if score @s 8T.AnimationTimer matches 41 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/4.1.attack
    execute if score @s 8T.AnimationTimer matches 44 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/4.1.attack
    execute if score @s 8T.AnimationTimer matches 47 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/4.1.attack

# 終了
    execute if score @s 8T.AnimationTimer matches 107.. run function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/2.end