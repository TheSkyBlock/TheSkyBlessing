scoreboard players add @s aj.blazing_inferno.animation.neurtal.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.blazing_inferno.animation.neurtal.local_anim_time
function animated_java:blazing_inferno/zzzzzzzz/animations/neurtal/apply_frame_as_root
execute if score @s aj.blazing_inferno.animation.neurtal.local_anim_time matches 60.. run function animated_java:blazing_inferno/zzzzzzzz/animations/neurtal/end