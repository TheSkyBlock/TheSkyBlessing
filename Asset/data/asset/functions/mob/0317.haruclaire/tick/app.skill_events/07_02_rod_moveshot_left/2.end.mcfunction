#> asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/2.end
#
# アニメーションのイベントハンドラ 杖モード・氷弾 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Rod.MoveShot.Left

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1