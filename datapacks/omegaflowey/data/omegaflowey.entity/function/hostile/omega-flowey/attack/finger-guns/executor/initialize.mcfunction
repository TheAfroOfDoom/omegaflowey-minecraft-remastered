function entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Finger-Guns Executor"'

# Set scores
scoreboard players operation @s attack.executor.clock.length = #attack-finger-guns attack.executor.clock.length
scoreboard players operation @s attack.executor.rate = #attack-finger-guns attack.executor.rate

# Add tags
tag @s add finger-guns
