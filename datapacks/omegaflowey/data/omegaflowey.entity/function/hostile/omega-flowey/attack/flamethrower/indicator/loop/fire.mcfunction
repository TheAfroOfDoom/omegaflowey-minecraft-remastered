execute if score #omegaflowey.attack.flamethrower.rotation_type omegaflowey.global.flag matches 1 run \
  teleport @s ~ ~ ~ ~-7.142857143 ~
  execute if score #omegaflowey.attack.flamethrower.rotation_type omegaflowey.global.flag matches 2 run \
  teleport @s ~ ~ ~ ~7.142857143 ~
execute if score #omegaflowey.attack.flamethrower.rotation_type omegaflowey.global.flag matches 3 run \
  teleport @s ~ ~ ~ ~6.25 ~

stopsound @a hostile omega-flowey:attack.flamethrower.fire
execute at @s run playsound omega-flowey:attack.flamethrower.fire hostile @a ~ ~ ~ 5 0.85
