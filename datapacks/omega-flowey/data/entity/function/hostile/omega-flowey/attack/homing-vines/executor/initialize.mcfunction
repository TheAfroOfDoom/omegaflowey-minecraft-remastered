# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players set @s attack.executor.repeat.count.i 0

scoreboard players operation @s attack.executor.clock.length = #attack-homing-vines attack.executor.clock.length
scoreboard players operation @s attack.executor.rate = #attack-homing-vines attack.executor.rate
scoreboard players operation @s attack.executor.repeat.count.total = #attack-homing-vines attack.executor.repeat.count.total
scoreboard players operation @s attack.executor.repeat.delay = #attack-homing-vines attack.executor.repeat.delay

# Remove tags
tag @s remove attack-executor-new
