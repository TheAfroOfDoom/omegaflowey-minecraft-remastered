execute on vehicle run return fail
execute if score $x player_motion.api.launch matches 0 if score $y player_motion.api.launch matches 0 if score $z player_motion.api.launch matches 0 run return 0
execute store result score #x player_motion.internal.dummy store result score #y player_motion.internal.dummy run scoreboard players set #z player_motion.internal.dummy 0
data modify storage player_motion:internal/temp matrix set value {x: 0.0d, y: 0.0d, z: 0.0d}
execute unless score $x player_motion.api.launch matches 0 run function player_motion:internal/convert_from_legacy/entry/x
execute unless score $y player_motion.api.launch matches 0 run function player_motion:internal/convert_from_legacy/entry/y
execute unless score $z player_motion.api.launch matches 0 run function player_motion:internal/convert_from_legacy/entry/z
execute if entity @s[x_rotation=-90] run return run function player_motion:internal/launch/handle_polar/global
execute as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 run function player_motion:internal/math/global/store_reference_vectors
execute store result score #vec_k_combined player_motion.internal.dummy run data get storage player_motion:internal/temp vec_k[0] 10000
execute store result score #temp1 player_motion.internal.dummy run data get storage player_motion:internal/temp vec_k[1] 10000
execute store result score #temp2 player_motion.internal.dummy run data get storage player_motion:internal/temp vec_k[2] 10000
scoreboard players operation #vec_k_combined player_motion.internal.dummy += #temp1 player_motion.internal.dummy
scoreboard players operation #vec_k_combined player_motion.internal.dummy += #temp2 player_motion.internal.dummy
execute if score @s player_motion.internal.previous_method matches 3 if score @s player_motion.internal.previous_vec_k = #vec_k_combined player_motion.internal.dummy if score @s player_motion.internal.previous_x.in = $x player_motion.api.launch if score @s player_motion.internal.previous_y.in = $y player_motion.api.launch if score @s player_motion.internal.previous_z.in = $z player_motion.api.launch run return run function player_motion:internal/launch/use_previous
scoreboard players operation @s player_motion.internal.previous_vec_k = #vec_k_combined player_motion.internal.dummy
scoreboard players set @s player_motion.internal.previous_method 3
scoreboard players set #temp player_motion.internal.dummy 0
execute if predicate player_motion:internal/large_global as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 store result score #temp player_motion.internal.dummy run function player_motion:internal/math/global/convert_large_to_local
execute if score #temp player_motion.internal.dummy matches 0 run function player_motion:internal/math/global/convert_to_local
scoreboard players operation @s player_motion.internal.previous_x.in = $x player_motion.api.launch
scoreboard players operation @s player_motion.internal.previous_y.in = $y player_motion.api.launch
scoreboard players operation @s player_motion.internal.previous_z.in = $z player_motion.api.launch
scoreboard players operation @s player_motion.internal.previous_x = #x player_motion.internal.dummy
scoreboard players operation @s player_motion.internal.previous_y = #y player_motion.internal.dummy
scoreboard players operation @s player_motion.internal.previous_z = #z player_motion.internal.dummy
function player_motion:internal/launch/main
