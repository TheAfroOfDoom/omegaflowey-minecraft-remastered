tag @s add is_animating_tvscreen_inside_face

# frame 0 -> frame 36
execute store result score #omegaflowey.tvscreen_inside_face.base_frame omegaflowey.math.0 run random value 0..36
scoreboard players set #omegaflowey.tvscreen_inside_face.period_idx omegaflowey.math.0 0
scoreboard players set #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 0
scoreboard players set #omegaflowey.tvscreen_inside_face.frame_duration omegaflowey.math.0 0
