scoreboard players set @s aj.haruclaire.animation.06_01_rod_shot_magic.local_anim_time 0
tag @s remove aj.haruclaire.animation.06_01_rod_shot_magic
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.haruclaire.disable_command_keyframes
function animated_java:haruclaire/zzzzzzzz/animations/06_01_rod_shot_magic/tree/leaf_0
tag @s remove aj.haruclaire.disable_command_keyframes