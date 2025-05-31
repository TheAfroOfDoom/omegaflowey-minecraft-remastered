scoreboard players add @s omegaflowey.attack.clock.i 1

# Move flamethrowers forward
execute if score @s omegaflowey.attack.clock.i matches 0..5 run teleport @s ^ ^ ^0.8

# Move flamethrowers backward
execute if score @s omegaflowey.attack.clock.i matches 49..54 run teleport @s ^ ^ ^-0.8

# Terminate
execute if score @s omegaflowey.attack.clock.i >= @s omegaflowey.attack.indicator.clock.length run \
  function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/terminate
