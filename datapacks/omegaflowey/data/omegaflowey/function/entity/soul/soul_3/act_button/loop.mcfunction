$execute unless entity $(executor_uuid) run return run \
  function omegaflowey:entity/soul/soul_3/act_button/terminate

execute if entity @s[tag=is_flipped] run return run function omegaflowey:entity/soul/soul_3/act_button/loop/flipped

execute if entity @s[tag=is_east] run teleport @s ~ ~ ~-0.25
execute if entity @s[tag=!is_east] run teleport @s ~ ~ ~0.25

# Terminate bullets once they go far enough in the +/- Z direction
execute store result score @s omegaflowey.soul.bullet.position.z run data get entity @s Pos[2] 100

execute if score @s[tag=is_east] omegaflowey.soul.bullet.position.z matches ..-2450 run return run \
  function omegaflowey:entity/soul/soul_3/act_button/flip

execute if score @s[tag=!is_east] omegaflowey.soul.bullet.position.z matches -450.. run return run \
  function omegaflowey:entity/soul/soul_3/act_button/flip
