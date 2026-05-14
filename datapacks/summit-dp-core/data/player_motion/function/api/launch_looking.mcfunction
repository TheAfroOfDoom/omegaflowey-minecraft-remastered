execute on vehicle run return fail
execute if score $strength player_motion.api.launch matches 0 run return 0
data modify storage player_motion:internal/temp matrix set value {x: 0.0d, y: 0.0d}
execute store result score #x player_motion.internal.dummy run scoreboard players set #y player_motion.internal.dummy 0
execute store result score #bucket_index player_motion.internal.dummy run scoreboard players operation #crystal player_motion.internal.dummy = $strength player_motion.api.launch
scoreboard players set #sign player_motion.internal.dummy 1
execute if score #crystal player_motion.internal.dummy matches ..-1 run scoreboard players set #sign player_motion.internal.dummy -1
execute if score #crystal player_motion.internal.dummy matches ..-1 store result score #bucket_index player_motion.internal.dummy run scoreboard players operation #crystal player_motion.internal.dummy *= #sign player_motion.internal.dummy
scoreboard players remove #bucket_index player_motion.internal.dummy 1
execute store result storage player_motion:internal/temp convert.index int 1 run scoreboard players operation #bucket_index player_motion.internal.dummy /= #constant.2000 player_motion.internal.const
execute store result score #z player_motion.internal.dummy store result storage player_motion:internal/temp matrix.z double 1 run function player_motion:internal/convert_from_legacy/index with storage player_motion:internal/temp convert
scoreboard players set #equal_context player_motion.internal.dummy 0
execute positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.00001] run scoreboard players set #equal_context player_motion.internal.dummy 1
execute if score #equal_context player_motion.internal.dummy matches 1 unless entity @s[x_rotation=-90] run return run function player_motion:internal/launch/main
execute if score #equal_context player_motion.internal.dummy matches 1 run return run function player_motion:internal/launch/handle_polar/local
execute as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 run function player_motion:internal/math/local_to_global with storage player_motion:internal/temp matrix
execute if entity @s[x_rotation=-90] run return run function player_motion:internal/launch/handle_polar/global
execute rotated as @s as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 run function player_motion:internal/math/global/store_reference_vectors
execute store result score #vec_k_combined player_motion.internal.dummy run data get storage player_motion:internal/temp vec_k[0] 10000
execute store result score #temp1 player_motion.internal.dummy run data get storage player_motion:internal/temp vec_k[1] 10000
execute store result score #temp2 player_motion.internal.dummy run data get storage player_motion:internal/temp vec_k[2] 10000
scoreboard players operation #vec_k_combined player_motion.internal.dummy += #temp1 player_motion.internal.dummy
scoreboard players operation #vec_k_combined player_motion.internal.dummy += #temp2 player_motion.internal.dummy
execute if score @s player_motion.internal.previous_method matches 2 if score @s player_motion.internal.previous_vec_k = #vec_k_combined player_motion.internal.dummy if score @s player_motion.internal.previous_z.in = $z player_motion.api.launch run return run function player_motion:internal/launch/use_previous
scoreboard players operation @s player_motion.internal.previous_vec_k = #vec_k_combined player_motion.internal.dummy
scoreboard players set @s player_motion.internal.previous_method 2
scoreboard players set #temp player_motion.internal.dummy 0
execute if predicate player_motion:internal/large_global as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 store result score #temp player_motion.internal.dummy run function player_motion:internal/math/global/convert_large_to_local
execute if score #temp player_motion.internal.dummy matches 0 run function player_motion:internal/math/global/convert_to_local
scoreboard players operation @s player_motion.internal.previous_z.in = $z player_motion.api.launch
scoreboard players operation @s player_motion.internal.previous_x = #x player_motion.internal.dummy
scoreboard players operation @s player_motion.internal.previous_y = #y player_motion.internal.dummy
scoreboard players operation @s player_motion.internal.previous_z = #z player_motion.internal.dummy
function player_motion:internal/launch/main
