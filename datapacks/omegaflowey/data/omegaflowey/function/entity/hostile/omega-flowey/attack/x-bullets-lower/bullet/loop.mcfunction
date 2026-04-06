scoreboard players add @s omegaflowey.attack.clock.i 1

# Move forward at defined `omegaflowey.attack.speed.z` velocity
execute if entity @s[tag=!x-bullets-lower-weak] \
  store result storage omegaflowey:utils.move z float 0.01 run \
  scoreboard players get #omegaflowey.attack.x-bullets-lower omegaflowey.attack.speed.z
execute if entity @s[tag= x-bullets-lower-weak] \
  store result storage omegaflowey:utils.move z float 0.01 run \
  scoreboard players get #omegaflowey.attack.x-bullets-lower-weak omegaflowey.attack.speed.z

function omegaflowey:entity/utils/move_forward with storage omegaflowey:utils.move

execute if entity @s[tag=!x-bullets-lower-weak] run \
  data merge storage omegaflowey:utils.damage { damage: 2, radius: 1.5, source: 'x_bullets_lower.bullet' }
execute if entity @s[tag= x-bullets-lower-weak] run \
  data merge storage omegaflowey:utils.damage { damage: 2, radius: 1.5, source: 'x_bullets_lower_weak.bullet' }

function omegaflowey:entity/utils/damage with storage omegaflowey:utils.damage

# Terminate after 2 seconds
execute if score @s omegaflowey.attack.clock.i >= @s omegaflowey.attack.bullets.clock.length run \
  function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-lower/bullet/terminate
