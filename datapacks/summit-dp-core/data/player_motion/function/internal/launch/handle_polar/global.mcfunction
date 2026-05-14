execute if score #x player_motion.internal.dummy matches 0 if score #y player_motion.internal.dummy matches 0 run return run function player_motion:internal/launch/main
scoreboard players operation #y player_motion.internal.dummy >< #z player_motion.internal.dummy
scoreboard players set #y_abs_within_90 player_motion.internal.dummy 0
execute if entity @s[y_rotation=90..-90] store success score #y_abs_within_90 player_motion.internal.dummy run scoreboard players operation #x player_motion.internal.dummy *= #constant.-1 player_motion.internal.const
execute if score #y_abs_within_90 player_motion.internal.dummy matches 0 run scoreboard players operation #y player_motion.internal.dummy *= #constant.-1 player_motion.internal.const
return run function player_motion:internal/launch/main
