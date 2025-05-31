scoreboard players add @s omegaflowey.attack.clock.i 1

# Ignore logic while `omegaflowey.attack.clock.i` is negative
execute if score @s omegaflowey.attack.clock.i matches ..-1 run return 0

# Terminate
execute if score @s omegaflowey.attack.clock.i = @s omegaflowey.attack.executor.clock.length run \
  function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/executor/terminate with storage omegaflowey:bossfight
