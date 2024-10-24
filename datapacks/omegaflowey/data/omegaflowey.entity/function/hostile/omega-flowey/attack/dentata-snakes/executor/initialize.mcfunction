function omegaflowey.main:telemetry/bossfight/tag/start { name: "attack.dentata_snakes" }

function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Dentata-Snakes Executor"'

# Set scores
scoreboard players operation @s omegaflowey.attack.executor.rate = #omegaflowey.attack.dentata-snakes omegaflowey.attack.executor.rate
scoreboard players operation @s omegaflowey.attack.executor.clock.length = #omegaflowey.attack.dentata-snakes omegaflowey.attack.executor.clock.length

# Add tags
tag @s add dentata-snakes
