$execute unless entity $(executor_uuid) run return run function omegaflowey.entity:soul/soul_1/indicator/terminate

scoreboard players add @s omegaflowey.soul.clock.i 1
execute if score @s omegaflowey.soul.clock.i matches ..-1 run return 0

execute if score #omegaflowey.soul.1.touched omegaflowey.soul.flag matches 0 run \
  teleport @s ~ ~ ~0.19 ~-1.5 ~

execute if score #omegaflowey.soul.1.touched omegaflowey.soul.flag matches 1 run \
  function omegaflowey.entity:soul/soul_1/indicator/loop/move_self

execute at @s run function omegaflowey.entity:soul/soul_1/indicator/loop/move_bullets
