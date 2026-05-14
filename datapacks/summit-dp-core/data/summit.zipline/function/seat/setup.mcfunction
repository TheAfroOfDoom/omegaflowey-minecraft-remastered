$data merge entity @s {Rotation:$(rotation), data:{summit_zipline:{target:"$(target)",speed:0.5f}}, Tags:["summit.moving_zipline"], transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,1.2f,0.35f]}, item:{id:"minecraft:cobblestone",components:{"minecraft:item_model":"summit_props:zipline_seat"}}, teleport_duration:3}
summon minecraft:item_display ~ ~ ~ {Tags: ["summit.zipline_compass", "summit.zipline_compass_unmounted"]}
ride @n[type=minecraft:item_display, tag=summit.zipline_compass_unmounted, distance=..0.1] mount @s
execute on passengers run tag @s remove summit.zipline_compass_unmounted
$execute rotated as @s at $(target) on passengers run rotate @s[tag=summit.zipline_compass,type=minecraft:item_display] facing ^ ^0.5 ^0.35
execute store result score @s summit.zipline_rotation_abs on passengers run data get entity @s[tag=summit.zipline_compass, type=minecraft:item_display] Rotation[0]
execute if score @s summit.zipline_rotation_abs matches ..1 run scoreboard players operation @s summit.zipline_rotation_abs *= $-1 summit.constants
ride @p[tag=summit.interact_zipline, distance=..10] mount @s
attribute @p[tag=summit.interact_zipline, distance=..10] minecraft:camera_distance modifier add summit:zipline 6 add_value
attribute @p[tag=summit.interact_zipline, distance=..10] minecraft:camera_distance modifier add summit:zipline 6 add_value
tag @p[tag=summit.interact_zipline, distance=..10] add summit.riding_zipline
scoreboard players set @s summit.zipline_start_timer 6
scoreboard players set @s summit.zipline_stop_timer 2
scoreboard players set @s summit.zipline_speed 200
schedule function summit.zipline:move_ziplines 1 replace
