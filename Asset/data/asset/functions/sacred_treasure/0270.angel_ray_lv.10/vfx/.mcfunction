#> asset:sacred_treasure/0270.angel_ray_lv.10/vfx/
#
#
#
# @within function asset:sacred_treasure/0270.angel_ray_lv.10/ray

execute if score @s 7I.AngelRay matches 1..5 run function asset:sacred_treasure/0270.angel_ray_lv.10/vfx/line
execute if score @s 7I.AngelRay matches 2..4 run function asset:sacred_treasure/0270.angel_ray_lv.10/vfx/line
execute if score @s 7I.AngelRay matches 3..3 run function asset:sacred_treasure/0270.angel_ray_lv.10/vfx/line_2
execute if score @s 7I.AngelRay matches 3..3 run function asset:sacred_treasure/0270.angel_ray_lv.10/vfx/line_2

execute if score @s 7I.AngelRay matches 3..3 positioned ^ ^ ^3.0 run function asset:sacred_treasure/0270.angel_ray_lv.10/vfx/ripple_small
execute if score @s 7I.AngelRay matches 3..3 positioned ^ ^ ^4.0 run function asset:sacred_treasure/0270.angel_ray_lv.10/vfx/ripple_large
execute if score @s 7I.AngelRay matches 3..3 positioned ^ ^ ^5.0 run function asset:sacred_treasure/0270.angel_ray_lv.10/vfx/ripple_small