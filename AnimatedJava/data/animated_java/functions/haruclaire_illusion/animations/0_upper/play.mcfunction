execute if entity @s[tag=aj.haruclaire_illusion.root] run function animated_java:haruclaire_illusion/zzzzzzzz/animations/0_upper/play_as_root
execute if entity @s[tag=!aj.haruclaire_illusion.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:haruclaire_illusion/animations/0_upper/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]