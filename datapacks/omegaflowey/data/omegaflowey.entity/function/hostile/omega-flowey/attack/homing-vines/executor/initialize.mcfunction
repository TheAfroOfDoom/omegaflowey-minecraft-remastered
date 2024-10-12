function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Homing-Vines Executor"'

# Set scores
scoreboard players set @s omegaflowey.attack.executor.repeat.count.i 0

scoreboard players operation @s omegaflowey.attack.executor.clock.length = #attack-homing-vines omegaflowey.attack.executor.clock.length
scoreboard players operation @s omegaflowey.attack.executor.rate = #attack-homing-vines omegaflowey.attack.executor.rate
scoreboard players operation @s omegaflowey.attack.executor.repeat.count.total = #attack-homing-vines omegaflowey.attack.executor.repeat.count.total
scoreboard players operation @s omegaflowey.attack.executor.repeat.delay = #attack-homing-vines omegaflowey.attack.executor.repeat.delay

# Add tags
tag @s add homing-vines
