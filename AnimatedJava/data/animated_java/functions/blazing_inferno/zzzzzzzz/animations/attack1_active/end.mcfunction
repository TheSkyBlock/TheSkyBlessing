execute if score @s aj.blazing_inferno.animation.attack1_active.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:blazing_inferno/zzzzzzzz/animations/attack1_active/end_loop
execute if score @s aj.blazing_inferno.animation.attack1_active.loop_mode = $aj.loop_mode.once aj.i run function animated_java:blazing_inferno/animations/attack1_active/stop
execute if score @s aj.blazing_inferno.animation.attack1_active.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:blazing_inferno/animations/attack1_active/pause