#> asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/1.main
#
# アニメーションのイベントハンドラ 杖モード・つらら
# 杖を回して敵をロックオン．
# 敵の足元からつららを生やして攻撃する．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

## ロックオン
# animated javaアニメーション再生 (ロックオン 長さ：72tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/3.1.play_lockon_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 1..5 at @s run tp @s ^ ^0.08 ^-0.05
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..70 run tag @s add 8T.Temp.Me
    execute if score @s 8T.AnimationTimer matches 1..70 as @p run function asset:mob/0317.haruclaire/tick/app.general/1.rotate
# 攻撃地点設置
    execute if score @s 8T.AnimationTimer matches 15 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
    execute if score @s 8T.AnimationTimer matches 26 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
    execute if score @s 8T.AnimationTimer matches 37 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
    execute if score @s 8T.AnimationTimer matches 48 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
    execute if score @s 8T.AnimationTimer matches 59 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
    execute if score @s 8T.AnimationTimer matches 70 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar

## 発動
# animated javaアニメーション再生 (つらら発動 長さ：41tick)
    execute if score @s 8T.AnimationTimer matches 72 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/3.2.play_attack_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 77..85 at @s run tp @s ^ ^0.06 ^
    execute if score @s 8T.AnimationTimer matches 97..112 at @s run tp @s ^ ^-0.05 ^
# 攻撃
    execute if score @s 8T.AnimationTimer matches 85..90 at @e[type=area_effect_cloud,tag=8T.SkillSp.Rod.IcePillar.AttackPos,distance=..30,sort=random,limit=6] run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/5.attack
# 終了
    execute if score @s 8T.AnimationTimer matches 113.. run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/2.end
