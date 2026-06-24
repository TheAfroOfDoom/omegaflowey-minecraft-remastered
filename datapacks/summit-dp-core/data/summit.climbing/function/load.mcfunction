data modify storage summit.climbing:master coords set value {up: {direct_0: "^ ^1 ^", direct_1: "^ ^2 ^", direct_2: "^ ^3 ^", in: "^ ^0.46875 ^-0.46875", out: "^ ^0.53125 ^0.53125"}, down: {direct_0: "^ ^-1 ^", direct_1: "^ ^-2 ^", direct_2: "^ ^-3 ^", in: "^ ^-0.46875 ^-0.46875", out: "^ ^-0.53125 ^0.53125"}, left: {direct_0: "^1 ^ ^", direct_1: "^2 ^ ^", direct_2: "^3 ^ ^", in: "^0.46875 ^ ^-0.46875", out: "^0.53125 ^ ^0.53125"}, right: {direct_0: "^-1 ^ ^", direct_1: "^-2 ^ ^", direct_2: "^-3 ^ ^", in: "^-0.46875 ^ ^-0.46875", out: "^-0.53125 ^ ^0.53125"}}
execute unless data storage summit.climbing:master {disable_auto_group_assignment: true} run data modify storage summit.climbing:master blocks.block_states set value {use_down_state: false, group_1: {north: "minecraft:copper_trapdoor[open=true,half=bottom,facing=south]", north_east: "minecraft:copper_trapdoor[open=true,half=top,facing=west]", east: "minecraft:copper_trapdoor[open=true,half=bottom,facing=west]", south_east: "minecraft:copper_trapdoor[open=true,half=top,facing=north]", south: "minecraft:copper_trapdoor[open=true,half=bottom,facing=north]", south_west: "minecraft:copper_trapdoor[open=true,half=top,facing=east]", west: "minecraft:copper_trapdoor[open=true,half=bottom,facing=east]", north_west: "minecraft:copper_trapdoor[open=true,half=top,facing=south]", down: "lime_wool"}, group_2: {north: "white_concrete", north_east: "light_gray_concrete", east: "gray_concrete", south_east: "black_concrete", south: "brown_concrete", south_west: "red_concrete", west: "orange_concrete", north_west: "yellow_concrete", down: "lime_concrete"}}
scoreboard objectives add summit.climbing.path_id dummy
scoreboard objectives add summit.climbing.cooldown dummy
scoreboard objectives add summit.climbing.max_cooldown dummy
scoreboard objectives add summit.climbing.int dummy
scoreboard players set 360 summit.climbing.int 360
scoreboard players set neg_1 summit.climbing.int -1
scoreboard players set 2 summit.climbing.int 2
scoreboard objectives add summit.climbing.target_rotation dummy
scoreboard objectives add summit.climbing.min_target_rotation dummy
scoreboard objectives add summit.climbing.max_target_rotation dummy
scoreboard objectives add summit.climbing.current_rotation dummy
scoreboard objectives add summit.climbing.swing_state dummy
data modify storage summit.climbing:master rotation.speeds set value {default: 8, entering: 14}
execute store result storage summit.climbing:master 3q_rotation_speed int 0.75 run data get storage summit.climbing:master rotation.speeds.entering
