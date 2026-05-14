execute if score #x player_motion.internal.dummy matches 0 if score #y player_motion.internal.dummy matches 0 run return run function player_motion:internal/launch/main
execute store result storage player_motion:internal/temp matrix.x double 1 run scoreboard players get #x player_motion.internal.dummy
execute store result storage player_motion:internal/temp matrix.y double 1 run scoreboard players get #y player_motion.internal.dummy
execute as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 run function player_motion:internal/math/polar_local_xy_to_global with storage player_motion:internal/temp matrix
scoreboard players set #y_abs_within_90 player_motion.internal.dummy 0
execute if entity @s[y_rotation=90..-90] store success score #y_abs_within_90 player_motion.internal.dummy run scoreboard players operation #x player_motion.internal.dummy *= #constant.-1 player_motion.internal.const
execute if score #y_abs_within_90 player_motion.internal.dummy matches 0 run scoreboard players operation #y player_motion.internal.dummy *= #constant.-1 player_motion.internal.const
return run function player_motion:internal/launch/main
