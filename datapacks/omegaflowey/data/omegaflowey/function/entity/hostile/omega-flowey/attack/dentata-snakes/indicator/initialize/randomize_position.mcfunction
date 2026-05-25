execute store result score @s omegaflowey.attack.bullets.position.z run random value -800..800
scoreboard players remove #omegaflowey.attack.dentata-snakes.indicator.remaining-retries omegaflowey.attack.flag 1

# this score is unset if this is the first indicator. no need to retry
execute \
  unless score #omegaflowey.attack.dentata-snakes.indicator.0.summon-coord omegaflowey.attack.flag matches -2147483648..2147483647 run \
  return run \
    scoreboard players operation \
      #omegaflowey.attack.dentata-snakes.indicator.0.summon-coord omegaflowey.attack.flag = \
      @s omegaflowey.attack.bullets.position.z

# this score is unset if this is the second indicator.
execute \
  unless score #omegaflowey.attack.dentata-snakes.indicator.1.summon-coord omegaflowey.attack.flag matches -2147483648..2147483647 run \
  return run function omegaflowey:entity/hostile/omega-flowey/attack/dentata-snakes/indicator/initialize/randomize_position/second_indicator

# this must be the third indicator.
function omegaflowey:entity/hostile/omega-flowey/attack/dentata-snakes/indicator/initialize/randomize_position/third_indicator
