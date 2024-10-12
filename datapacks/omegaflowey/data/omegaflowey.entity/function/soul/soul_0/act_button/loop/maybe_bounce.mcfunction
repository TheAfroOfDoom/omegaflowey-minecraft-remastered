data merge storage soul:soul_0.bounce { x_negative_x: -20, x_negative_dx: 50 }
data merge storage soul:soul_0.bounce { x_positive_x: 20, x_positive_dx: -50 }
data merge storage soul:soul_0.bounce { z_negative_z: -77, z_negative_dz: 100 }
data merge storage soul:soul_0.bounce { z_positive_z: -58, z_positive_dz: -100 }
data merge storage soul:soul_0.bounce { y: 30, dy: 10 }
data merge storage soul:soul_0.bounce { command_after_bouncing: 'return 0' }

# Store original yaw
execute store result score @s omegaflowey.math.0 run data get entity @s Rotation[0] 100

# Temporarily store yaw to NBT for bounce function
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s soul.bullet.position.yaw

# Run bounce util function
function omegaflowey.entity:utils/bounce with storage soul:soul_0.bounce
scoreboard players operation @s soul.bullet.position.yaw = @s util.bounce.yaw

# Restore original yaw
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s omegaflowey.math.0
