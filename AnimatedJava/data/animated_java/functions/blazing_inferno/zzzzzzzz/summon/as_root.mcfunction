execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.blazing_inferno.rig_loaded 1
scoreboard players operation @s aj.blazing_inferno.export_version = aj.blazing_inferno.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:blazing_inferno/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.blazing_inferno.variant.default aj.id run function animated_java:blazing_inferno/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.blazing_inferno.variant.shadow aj.id run function animated_java:blazing_inferno/zzzzzzzz/apply_variant/shadow/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.neurtal aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/neurtal/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.neurtal aj.id run scoreboard players operation @s aj.blazing_inferno.animation.neurtal.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.intro aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/intro/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.intro aj.id run scoreboard players operation @s aj.blazing_inferno.animation.intro.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.burst aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/burst/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.burst aj.id run scoreboard players operation @s aj.blazing_inferno.animation.burst.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.right1_active aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/right1_active/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.right1_active aj.id run scoreboard players operation @s aj.blazing_inferno.animation.right1_active.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.left1_active aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/left1_active/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.left1_active aj.id run scoreboard players operation @s aj.blazing_inferno.animation.left1_active.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.dash_windup aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/dash_windup/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.dash_windup aj.id run scoreboard players operation @s aj.blazing_inferno.animation.dash_windup.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.dash_charge aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/dash_charge/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.dash_charge aj.id run scoreboard players operation @s aj.blazing_inferno.animation.dash_charge.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.dash_active aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/dash_active/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.dash_active aj.id run scoreboard players operation @s aj.blazing_inferno.animation.dash_active.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.rush_loop aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/rush_loop/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.rush_loop aj.id run scoreboard players operation @s aj.blazing_inferno.animation.rush_loop.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.dash_end aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/dash_end/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.dash_end aj.id run scoreboard players operation @s aj.blazing_inferno.animation.dash_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blazing_inferno.animation.death_loop aj.id run function animated_java:blazing_inferno/zzzzzzzz/animations/death_loop/apply_frame_as_root
execute if score #animation aj.i = $aj.blazing_inferno.animation.death_loop aj.id run scoreboard players operation @s aj.blazing_inferno.animation.death_loop.local_anim_time = #frame aj.i
execute at @s run function #animated_java:blazing_inferno/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i