# Set scores
scoreboard players set @s attack.clock.i -1

scoreboard players operation @s attack.executor.clock.length = #attack-bomb attack.executor.clock.length
scoreboard players operation @s attack.executor.rate = #attack-bomb attack.executor.rate

# Remove tags
tag @s remove attack-executor-new
