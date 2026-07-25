# if we are out of retries, save current score
execute if score #omegaflowey.attack.dentata-snakes.indicator.remaining-retries omegaflowey.attack.flag matches 0 run return run \
  scoreboard players operation \
      #omegaflowey.attack.dentata-snakes.indicator.2.summon-coord omegaflowey.attack.flag = \
      @s omegaflowey.attack.bullets.position.z

# check against the first indicator's position. if we are too close, try a new position
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.attack.bullets.position.z
scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.dentata-snakes.indicator.0.summon-coord omegaflowey.attack.flag
execute if score @s omegaflowey.math.0 matches -400..400 run return run \
  function omegaflowey:entity/hostile/omega-flowey/attack/dentata-snakes/indicator/initialize/randomize_position

# check against the second indicator's position. if we are too close, try a new position
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.attack.bullets.position.z
scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.dentata-snakes.indicator.1.summon-coord omegaflowey.attack.flag
execute if score @s omegaflowey.math.0 matches -400..400 run return run \
  function omegaflowey:entity/hostile/omega-flowey/attack/dentata-snakes/indicator/initialize/randomize_position

# if we are far enough away, save current score
scoreboard players operation \
  #omegaflowey.attack.dentata-snakes.indicator.2.summon-coord omegaflowey.attack.flag \
  = @s omegaflowey.attack.bullets.position.z
