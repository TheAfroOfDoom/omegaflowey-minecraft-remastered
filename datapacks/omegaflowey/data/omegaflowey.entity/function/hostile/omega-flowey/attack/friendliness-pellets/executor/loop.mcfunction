## Runs tick-wise on the `attack-executor` for the `friendliness-pellets` attack

scoreboard players add @s omegaflowey.attack.clock.i 1

# Ignore logic while `omegaflowey.attack.clock.i` is negative
execute if score @s omegaflowey.attack.clock.i matches ..-1 run return 0

# Summon an indicator at a random player every `omegaflowey.attack.executor.rate` ticks
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.attack.clock.i
scoreboard players operation @s omegaflowey.math.0 %= @s omegaflowey.attack.executor.rate
execute if score @s omegaflowey.math.0 matches 0 run function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/executor/loop/summon_indicator

# Terminate
execute if score @s omegaflowey.attack.clock.i = @s omegaflowey.attack.executor.clock.length run \
  function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/executor/terminate with storage omegaflowey:bossfight
