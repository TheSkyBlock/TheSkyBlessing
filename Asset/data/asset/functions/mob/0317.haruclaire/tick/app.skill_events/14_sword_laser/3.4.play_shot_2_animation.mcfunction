#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/3.4.play_shot_2_animation
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ アニメーション再生 射撃-3
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire/animations/15_04_sword_laser_shot_2/play