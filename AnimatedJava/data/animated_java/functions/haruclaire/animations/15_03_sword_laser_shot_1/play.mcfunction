execute if entity @s[tag=aj.haruclaire.root] run function animated_java:haruclaire/zzzzzzzz/animations/15_03_sword_laser_shot_1/play_as_root
execute if entity @s[tag=!aj.haruclaire.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:haruclaire/animations/15_03_sword_laser_shot_1/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]