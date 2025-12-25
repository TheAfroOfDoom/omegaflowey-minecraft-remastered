scoreboard players add @s omegaflowey.attack.clock.i 1

# TODO(68): validate/determine a value for how long until the flamethrower bullets terminate
execute if score @s omegaflowey.attack.clock.i matches 60.. run return run \
  function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/bullet/terminate

execute if entity @s[tag=!is_falling] run function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/bullet/loop/sliding
# Move forward + fall
execute if entity @s[tag=is_falling] run function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/bullet/loop/falling

function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/bullet/loop/move
