## Runs tick-wise on the `attack-executor` for the `homing-vines` attack

scoreboard players add @s attack.clock.i 1

# Ignore logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Summon an indicator at a random player every `attack.executor.rate` ticks
scoreboard players operation @s math.0 = @s attack.clock.i
scoreboard players operation @s math.0 %= @s attack.executor.rate
execute if score @s math.0 matches 0 run function entity:hostile/omega-flowey/attack/homing-vines/executor/loop/summon_indicator

# Terminate
execute if score @s attack.clock.i = @s attack.executor.clock.length run \
  function entity:hostile/omega-flowey/attack/homing-vines/executor/terminate with storage omegaflowey:bossfight
