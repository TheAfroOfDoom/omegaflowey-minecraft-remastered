$execute unless entity $(executor_uuid) run return run function omegaflowey.entity:soul/soul_4/indicator/terminate

scoreboard players add @s omegaflowey.soul.clock.i 1
execute if score @s omegaflowey.soul.clock.i matches ..-1 run return 0

function omegaflowey.entity:soul/soul_4/indicator/loop/check_reenable_visible

execute if entity @s[tag= is_eastward] run teleport @s ~ ~ ~0.5
execute if entity @s[tag=!is_eastward] run teleport @s ~ ~ ~-0.5

# wrap if this has moved far enough outside arena
execute if entity @s[tag=is_eastward] at @s \
  unless entity @s[x=-100, dx=200, y=-30, dy=100, z=-90, dz=48] run \
  function omegaflowey.entity:soul/soul_4/indicator/loop/wrap
execute if entity @s[tag=!is_eastward] at @s \
  unless entity @s[x=-100, dx=200, y=-30, dy=100, z=-90, dz=48] run \
  function omegaflowey.entity:soul/soul_4/indicator/loop/wrap
