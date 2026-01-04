$execute unless entity $(executor_uuid) run return run function omegaflowey.entity:soul/soul_2/star/terminate

scoreboard players add @s omegaflowey.soul.clock.i 1

# Terminate bullets once they go far enough in the -X direction
execute store result score @s omegaflowey.soul.bullet.position.x run data get entity @s Pos[0] 100
execute if score @s omegaflowey.soul.bullet.position.x matches ..-3300 run return run \
  function omegaflowey.entity:soul/soul_2/star/terminate

execute if score #omegaflowey.soul.2.slow_down omegaflowey.soul.flag matches 0 run \
  teleport @s ~-0.4 ~ ~
execute if score #omegaflowey.soul.2.slow_down omegaflowey.soul.flag matches 1 run \
  function omegaflowey.entity:soul/soul_2/star/loop/move_self
