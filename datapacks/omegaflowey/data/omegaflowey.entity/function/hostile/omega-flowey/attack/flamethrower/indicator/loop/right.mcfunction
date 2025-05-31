# 1st rotate
execute if score @s omegaflowey.attack.clock.i matches 7..13 run stopsound @a hostile omega-flowey:attack.flamethrower.fire
execute if score @s omegaflowey.attack.clock.i matches 7..13 run \
  playsound omega-flowey:attack.flamethrower.fire hostile @a ~ ~ ~ 5 0.85
execute if score @s omegaflowey.attack.clock.i matches 7..13 run teleport @s ~ ~ ~ ~-7.142857143 ~

# 2nd rotate
execute if score @s omegaflowey.attack.clock.i matches 37..44 run stopsound @a hostile omega-flowey:attack.flamethrower.fire
execute if score @s omegaflowey.attack.clock.i matches 37..44 run \
  playsound omega-flowey:attack.flamethrower.fire hostile @a ~ ~ ~ 5 0.85
execute if score @s omegaflowey.attack.clock.i matches 37..44 run teleport @s ~ ~ ~ ~6.25 ~
