execute if entity @s[tag=aj.blazing_inferno.root] run function animated_java:blazing_inferno/zzzzzzzz/animations/rush_loop/tween_resume_as_root
execute if entity @s[tag=!aj.blazing_inferno.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:blazing_inferno/animations/rush_loop/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]