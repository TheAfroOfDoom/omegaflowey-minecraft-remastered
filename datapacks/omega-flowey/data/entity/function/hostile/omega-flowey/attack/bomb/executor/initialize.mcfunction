data modify entity @s CustomName set value '"Bomb Executor"'

# Set scores
scoreboard players set @s attack.clock.i -1

scoreboard players operation @s attack.executor.clock.length = #attack-bomb attack.executor.clock.length
scoreboard players operation @s attack.executor.rate = #attack-bomb attack.executor.rate

# Add tags
tag @s add omega-flowey-remastered
tag @s add hostile
tag @s add omega-flowey
tag @s add attack
tag @s add attack-executor
tag @s add bomb
