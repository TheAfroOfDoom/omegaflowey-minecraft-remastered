execute if score $x player_motion.api.launch matches 0 if score $y player_motion.api.launch matches 0 if score $z player_motion.api.launch matches 0 run return 0
scoreboard players operation #x player_motion.internal.dummy = $x player_motion.api.launch
scoreboard players operation #y player_motion.internal.dummy = $y player_motion.api.launch
scoreboard players operation #z player_motion.internal.dummy = $z player_motion.api.launch
execute if entity @s[x_rotation=-90] run return run function player_motion:internal/launch/handle_polar/global
execute store result storage player_motion:internal/temp matrix.x double 1 run scoreboard players get #x player_motion.internal.dummy
execute store result storage player_motion:internal/temp matrix.y double 1 run scoreboard players get #y player_motion.internal.dummy
execute store result storage player_motion:internal/temp matrix.z double 1 run scoreboard players get #z player_motion.internal.dummy
execute as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 run function player_motion:internal/math/global/store_reference_vectors
execute store result score #vec_k_combined player_motion.internal.dummy run data get storage player_motion:internal/temp vec_k[0] 10000
execute store result score #temp1 player_motion.internal.dummy run data get storage player_motion:internal/temp vec_k[1] 10000
execute store result score #temp2 player_motion.internal.dummy run data get storage player_motion:internal/temp vec_k[2] 10000
scoreboard players operation #vec_k_combined player_motion.internal.dummy += #temp1 player_motion.internal.dummy
scoreboard players operation #vec_k_combined player_motion.internal.dummy += #temp2 player_motion.internal.dummy
execute if score @s player_motion.internal.previous_method matches 0 if score @s player_motion.internal.previous_vec_k = #vec_k_combined player_motion.internal.dummy if score @s player_motion.internal.previous_x.in = $x player_motion.api.launch if score @s player_motion.internal.previous_y.in = $y player_motion.api.launch if score @s player_motion.internal.previous_z.in = $z player_motion.api.launch run return run function player_motion:internal/launch/use_previous
scoreboard players operation @s player_motion.internal.previous_vec_k = #vec_k_combined player_motion.internal.dummy
scoreboard players set @s player_motion.internal.previous_method 0
scoreboard players set #temp player_motion.internal.dummy 0
execute if predicate player_motion:internal/large_global as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 store result score #temp player_motion.internal.dummy run function player_motion:internal/math/global/convert_large_to_local
execute if score #temp player_motion.internal.dummy matches 0 run function player_motion:internal/math/global/convert_to_local
scoreboard players operation @s player_motion.internal.previous_x.in = $x player_motion.api.launch
scoreboard players operation @s player_motion.internal.previous_y.in = $y player_motion.api.launch
scoreboard players operation @s player_motion.internal.previous_z.in = $z player_motion.api.launch
scoreboard players operation @s player_motion.internal.previous_x = #x player_motion.internal.dummy
scoreboard players operation @s player_motion.internal.previous_y = #y player_motion.internal.dummy
scoreboard players operation @s player_motion.internal.previous_z = #z player_motion.internal.dummy
return run function player_motion:internal/launch/main
