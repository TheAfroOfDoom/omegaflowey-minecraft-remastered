function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Finger-Guns Executor"'

# Set scores
scoreboard players operation @s omegaflowey.attack.executor.clock.length = #attack-finger-guns omegaflowey.attack.executor.clock.length
scoreboard players operation @s omegaflowey.attack.executor.rate = #attack-finger-guns omegaflowey.attack.executor.rate

# Add tags
tag @s add finger-guns
