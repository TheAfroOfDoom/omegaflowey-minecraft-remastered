function omegaflowey.main:telemetry/bossfight/tag/start { name: "attack.friendliness_pellets" }

function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Friendliness-Pellets Executor"'

# Set scores
scoreboard players operation @s omegaflowey.attack.executor.rate = #omegaflowey.attack.friendliness-pellets omegaflowey.attack.executor.rate
scoreboard players operation @s omegaflowey.attack.executor.clock.length = #omegaflowey.attack.friendliness-pellets omegaflowey.attack.executor.clock.length

# Add tags
tag @s add friendliness-pellets
