function omegaflowey.main:telemetry/bossfight/tag/start { name: "attack.homing_vines" }

function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Homing-Vines Executor"'

# Set scores
scoreboard players set @s omegaflowey.attack.executor.repeat.count.i 0

scoreboard players operation @s omegaflowey.attack.executor.clock.length = #omegaflowey.attack.homing-vines omegaflowey.attack.executor.clock.length
scoreboard players operation @s omegaflowey.attack.executor.rate = #omegaflowey.attack.homing-vines omegaflowey.attack.executor.rate
scoreboard players operation @s omegaflowey.attack.executor.repeat.count.total = #omegaflowey.attack.homing-vines omegaflowey.attack.executor.repeat.count.total
scoreboard players operation @s omegaflowey.attack.executor.repeat.delay = #omegaflowey.attack.homing-vines omegaflowey.attack.executor.repeat.delay

# Add tags
tag @s add homing-vines
