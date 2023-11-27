execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.dentata_snake_ball.rig_loaded 1
scoreboard players operation @s aj.dentata_snake_ball.export_version = aj.dentata_snake_ball.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:dentata_snake_ball/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.dentata_snake_ball.variant.default aj.id run function animated_java:dentata_snake_ball/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.dentata_snake_ball.variant.tail aj.id run function animated_java:dentata_snake_ball/zzzzzzzz/apply_variant/tail/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dentata_snake_ball.animation.roll_scale_36 aj.id run function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_scale_36/apply_frame_as_root
execute if score #animation aj.i = $aj.dentata_snake_ball.animation.roll_scale_36 aj.id run scoreboard players operation @s aj.dentata_snake_ball.animation.roll_scale_36.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dentata_snake_ball.animation.roll_scale_40 aj.id run function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_scale_40/apply_frame_as_root
execute if score #animation aj.i = $aj.dentata_snake_ball.animation.roll_scale_40 aj.id run scoreboard players operation @s aj.dentata_snake_ball.animation.roll_scale_40.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dentata_snake_ball.animation.roll_scale_44 aj.id run function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_scale_44/apply_frame_as_root
execute if score #animation aj.i = $aj.dentata_snake_ball.animation.roll_scale_44 aj.id run scoreboard players operation @s aj.dentata_snake_ball.animation.roll_scale_44.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dentata_snake_ball.animation.roll_scale_50 aj.id run function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_scale_50/apply_frame_as_root
execute if score #animation aj.i = $aj.dentata_snake_ball.animation.roll_scale_50 aj.id run scoreboard players operation @s aj.dentata_snake_ball.animation.roll_scale_50.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dentata_snake_ball.animation.roll_bite aj.id run function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_bite/apply_frame_as_root
execute if score #animation aj.i = $aj.dentata_snake_ball.animation.roll_bite aj.id run scoreboard players operation @s aj.dentata_snake_ball.animation.roll_bite.local_anim_time = #frame aj.i
execute at @s run function #animated_java:dentata_snake_ball/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i