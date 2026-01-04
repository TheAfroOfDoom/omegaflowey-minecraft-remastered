$execute unless entity $(executor_uuid) run return run function omegaflowey.entity:soul/soul_2/bullet/terminate

scoreboard players add @s omegaflowey.soul.clock.i 1

# Terminate bullets once they go far enough in the -X direction
execute store result score @s omegaflowey.soul.bullet.position.x run data get entity @s Pos[0] 100
execute if score @s omegaflowey.soul.bullet.position.x matches ..-3300 run return run \
  function omegaflowey.entity:soul/soul_2/bullet/terminate

# Move forward
teleport @s ~-0.4 ~ ~
