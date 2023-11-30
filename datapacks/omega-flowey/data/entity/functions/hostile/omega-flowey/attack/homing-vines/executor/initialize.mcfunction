# Set scores
scoreboard players set @s attack.clock.i -1

scoreboard players operation @s attack.executor.rate = #attack-homing-vines attack.executor.rate
scoreboard players operation @s attack.executor.clock.length = #attack-homing-vines attack.executor.clock.length

# Remove tags
tag @s remove attack-executor-new
