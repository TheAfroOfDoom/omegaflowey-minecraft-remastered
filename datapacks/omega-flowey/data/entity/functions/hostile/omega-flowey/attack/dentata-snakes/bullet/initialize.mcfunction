# Set scores
scoreboard players set @s attack.clock.i -1

# Update yaw from indicator
$data merge entity @s { Rotation: [$(bullet_yaw)f, 0.0f] }

# Calculate damage radius of ball based on scalar
# base radius: 2.0625 / 0.9 ~= 2.29
# 2.0625 was calculated by measuring the radius (diameter / 2) of the model in blockbench, including spikes
# (=> pixels / 16 = blocks)
# actual radius = 100*baseRadius * 100*scaleRounded = 10000*actualRadius
scoreboard players set @s attack.bullets.radius 229
$scoreboard players set @s attack.bullets.scale $(scale_rounded)
scoreboard players operation @s attack.bullets.radius *= @s attack.bullets.scale

# Remove tags
tag @s remove attack-bullet-new
