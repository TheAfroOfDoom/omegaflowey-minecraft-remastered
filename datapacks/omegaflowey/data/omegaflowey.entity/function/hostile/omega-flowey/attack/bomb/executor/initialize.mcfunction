function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Bomb Executor"'

# Set scores
scoreboard players operation @s attack.executor.clock.length = #attack-bomb attack.executor.clock.length
scoreboard players operation @s attack.executor.rate = #attack-bomb attack.executor.rate

# Add tags
tag @s add bomb
