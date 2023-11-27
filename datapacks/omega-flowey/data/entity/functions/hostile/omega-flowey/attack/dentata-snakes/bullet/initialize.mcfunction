# Set scores
scoreboard players set @s attack.clock.i -1

# Update yaw from indicator
$data merge entity @s { Rotation: [$(bullet_yaw)f, 0.0f] }

# Remove tags
tag @s remove attack-bullet-new
