function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Dentata-Snakes Executor"'

# Set scores
scoreboard players operation @s omegaflowey.attack.executor.rate = #attack-dentata-snakes omegaflowey.attack.executor.rate
scoreboard players operation @s omegaflowey.attack.executor.clock.length = #attack-dentata-snakes omegaflowey.attack.executor.clock.length

# Add tags
tag @s add dentata-snakes
