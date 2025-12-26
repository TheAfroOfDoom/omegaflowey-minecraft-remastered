execute if score #omegaflowey.attack.flamethrower.rotation_type omegaflowey.global.flag matches 1 run \
  rotate @s ~-7.142857143 ~
  execute if score #omegaflowey.attack.flamethrower.rotation_type omegaflowey.global.flag matches 2 run \
  rotate @s ~7.142857143 ~
execute if score #omegaflowey.attack.flamethrower.rotation_type omegaflowey.global.flag matches 3 run \
  rotate @s ~6.25 ~

stopsound @a hostile omega-flowey:attack.flamethrower.fire
function animated_java:omegaflowey_flamethrower/as_own_locator_entities { command: \
  'execute at @s run function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/loop/fire/as_tip_locator' \
}
