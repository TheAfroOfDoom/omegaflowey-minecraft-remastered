# 1st rotate
scoreboard players set #omegaflowey.attack.flamethrower.rotation_type omegaflowey.global.flag 1
execute if score @s omegaflowey.attack.clock.i matches 7..13 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/loop/fire

# 2nd rotate
scoreboard players set #omegaflowey.attack.flamethrower.rotation_type omegaflowey.global.flag 3
execute if score @s omegaflowey.attack.clock.i matches 37..44 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/loop/fire
