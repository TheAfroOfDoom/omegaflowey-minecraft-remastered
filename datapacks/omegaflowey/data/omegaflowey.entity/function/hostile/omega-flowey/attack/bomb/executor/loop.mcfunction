scoreboard players add @s omegaflowey.attack.clock.i 1

# Ignore logic while `omegaflowey.attack.clock.i` is negative
execute if score @s omegaflowey.attack.clock.i matches ..-1 run return 0

# Summon an indicator at a random player every `attack.executor.rate` ticks
scoreboard players operation @s math.0 = @s omegaflowey.attack.clock.i
scoreboard players operation @s math.0 %= @s attack.executor.rate
execute if score @s math.0 matches 0 run function omegaflowey.entity:hostile/omega-flowey/attack/bomb/executor/loop/indicator/summon

# Terminate
execute if score @s omegaflowey.attack.clock.i = @s attack.executor.clock.length run \
  function omegaflowey.entity:hostile/omega-flowey/attack/bomb/executor/terminate with storage omegaflowey:bossfight
