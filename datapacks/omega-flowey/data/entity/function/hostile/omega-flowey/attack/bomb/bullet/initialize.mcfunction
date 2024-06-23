# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.speed.z = #attack-bomb attack.speed.z

# Remove tags
tag @s remove attack-bullet-new
