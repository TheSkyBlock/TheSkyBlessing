#> player_manager:god/wi-ki/
#
#
#
# @within function world_manager:area/14.wi-ki_temple

# 教徒
    execute if entity @s[tag=Believe.Wi-ki] run function player_manager:god/wi-ki/mercy
# 異教徒
    execute if entity @s[tag=!Believe.Wi-ki] run function player_manager:god/change_believe/check