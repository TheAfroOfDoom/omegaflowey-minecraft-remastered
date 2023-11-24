# Set scores
scoreboard players set @s attack.clock.i -1

scoreboard players operation @s attack.executor.rate = #attack-dentata-snakes attack.executor.rate
scoreboard players operation @s attack.executor.clock.length = #attack-dentata-snakes attack.executor.clock.length

# Remove tags
tag @s remove attack-executor-new
