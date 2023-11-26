# Set scores
scoreboard players set @s attack.clock.i -1

# Update yaw from indicator
$data merge entity @s { Rotation: [$(bullet_yaw)f, 0.0f] }

# Head-specific initialization
execute if entity @s[tag=attack-bullet-head] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/initialize/head

# Tail-specific initialization
execute unless entity @s[tag=attack-bullet-head] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/initialize/tail

# Remove tags
tag @s remove attack-bullet-new
