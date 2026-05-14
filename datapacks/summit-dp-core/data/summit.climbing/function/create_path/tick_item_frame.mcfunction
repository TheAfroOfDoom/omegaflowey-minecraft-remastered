particle end_rod ~ ~ ~ 0.2 0.2 0.2 0 10 force @a
data modify storage summit.climbing:master init.tile_data set value {}
execute if data entity @s {Facing: 1b} run tag @s add summit.climbing.entry
execute if entity @s[tag=summit.climbing.entry] run data modify storage summit.climbing:master init.tile_data.entry set value true
function summit.climbing:create_path/check_direction {coord_prefix: "^-", coord_suffix: " ^", direction: "left"}
function summit.climbing:create_path/check_direction {coord_prefix: "^", coord_suffix: " ^", direction: "right"}
function summit.climbing:create_path/check_direction {coord_prefix: "^ ^", coord_suffix: "", direction: "up"}
function summit.climbing:create_path/check_direction {coord_prefix: "^ ^-", coord_suffix: "", direction: "down"}
data modify storage summit.climbing:master init.tile_data.direction set from entity @s Facing
data modify storage summit.climbing:master init.tile_data.pos set from entity @s Pos
function summit.climbing:create_path/save_tile with storage summit.climbing:master init.tile_data
execute as @n[type=minecraft:item_frame, y=0, tag=summit.climbing.propagated] at @s rotated as @s run return run function summit.climbing:create_path/tick_item_frame
execute store result storage summit.climbing:master init.id int 1 run scoreboard players add #global summit.climbing.path_id 1
function summit.climbing:create_path/save_path with storage summit.climbing:master init
execute as @e[type=minecraft:item_frame, tag=summit.climbing.entry] at @s align xyz positioned ~0.5 ~ ~0.5 summon minecraft:interaction run function summit.climbing:create_path/summon_interaction
tag @e remove summit.climbing.saved
