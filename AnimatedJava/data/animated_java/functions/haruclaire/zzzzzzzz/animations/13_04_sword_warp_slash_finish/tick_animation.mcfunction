scoreboard players add @s aj.haruclaire.animation.13_04_sword_warp_slash_finish.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.13_04_sword_warp_slash_finish.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/13_04_sword_warp_slash_finish/apply_frame_as_root
execute if score @s aj.haruclaire.animation.13_04_sword_warp_slash_finish.local_anim_time matches 65.. run function animated_java:haruclaire/zzzzzzzz/animations/13_04_sword_warp_slash_finish/end