execute if score @s aj.haruclaire.animation.04_02_rod_laser_shot.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:haruclaire/zzzzzzzz/animations/04_02_rod_laser_shot/end_loop
execute if score @s aj.haruclaire.animation.04_02_rod_laser_shot.loop_mode = $aj.loop_mode.once aj.i run function animated_java:haruclaire/animations/04_02_rod_laser_shot/stop
execute if score @s aj.haruclaire.animation.04_02_rod_laser_shot.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:haruclaire/animations/04_02_rod_laser_shot/pause