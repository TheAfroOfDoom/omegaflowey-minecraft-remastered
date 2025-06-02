# 1st rotate
scoreboard players set #omegaflowey.attack.flamethrower.rotation_type omegaflowey.global.flag 2
execute if score @s omegaflowey.attack.clock.i matches 23..29 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/loop/fire
