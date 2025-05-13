tag @s add is_test_playing

# frame 0 -> frame 36
execute store result score #flowey.test_play.base_frame omegaflowey.math.0 run random value 0..36
scoreboard players set #flowey.test_play.period_idx omegaflowey.math.0 0
scoreboard players set #flowey.test_play.sequence_idx omegaflowey.math.0 0
scoreboard players set #flowey.test_play.frame_duration omegaflowey.math.0 0
