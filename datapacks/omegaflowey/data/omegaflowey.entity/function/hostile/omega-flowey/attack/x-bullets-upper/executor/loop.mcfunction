## Runs tick-wise on the `attack-executor` for the `x-bullets-upper` attack

scoreboard players add @s omegaflowey.attack.clock.i 1

# Ignore logic while `omegaflowey.attack.clock.i` is negative
execute if score @s omegaflowey.attack.clock.i matches ..-1 run return 0

# Pause upper_eye animations
execute if score @s omegaflowey.attack.clock.i matches 0 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/loop/pause_eye with storage omegaflowey:bossfight

# Summon indicators at each upper_eye every `attack.executor.rate` ticks
scoreboard players operation @s math.0 = @s omegaflowey.attack.clock.i
scoreboard players operation @s math.0 %= @s attack.executor.rate
execute if score @s math.0 matches 0 if score @s attack.indicator.remaining matches 1.. run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/loop/summon_indicator with storage omegaflowey:bossfight

# Terminate
execute if score @s omegaflowey.attack.clock.i >= @s attack.executor.clock.length run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/terminate with storage omegaflowey:bossfight
