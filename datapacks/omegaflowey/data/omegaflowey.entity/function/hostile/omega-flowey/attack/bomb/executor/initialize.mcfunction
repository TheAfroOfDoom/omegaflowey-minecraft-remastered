function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Bomb Executor"'

# Set scores
scoreboard players operation @s omegaflowey.attack.executor.clock.length = #attack-bomb omegaflowey.attack.executor.clock.length
scoreboard players operation @s omegaflowey.attack.executor.rate = #attack-bomb omegaflowey.attack.executor.rate

# Add tags
tag @s add bomb
