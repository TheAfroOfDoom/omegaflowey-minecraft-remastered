# Start moving at yaw +/- 45 degrees (50% chance of either)
scoreboard players set @s omegaflowey.soul.bullet.position.yaw 45
execute store result score @s omegaflowey.math.0 run random value -1..0
execute if score @s omegaflowey.math.0 matches -1 run scoreboard players operation @s omegaflowey.soul.bullet.position.yaw *= @s omegaflowey.math.0
execute store result storage omegaflowey:soul.0 yaw float 1 run scoreboard players get @s omegaflowey.soul.bullet.position.yaw

# Add tag to act_button so it can begin moving
execute as @e[tag=soul_0,tag=act-button] run function omegaflowey.entity:soul/soul_0/act_button/initialize/can_move
