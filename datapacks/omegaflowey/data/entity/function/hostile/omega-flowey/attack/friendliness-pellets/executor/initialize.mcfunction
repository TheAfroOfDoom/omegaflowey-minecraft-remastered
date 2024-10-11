function entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Friendliness-Pellets Executor"'

# Set scores
scoreboard players operation @s attack.executor.rate = #attack-friendliness-pellets attack.executor.rate
scoreboard players operation @s attack.executor.clock.length = #attack-friendliness-pellets attack.executor.clock.length

# Add tags
tag @s add friendliness-pellets
