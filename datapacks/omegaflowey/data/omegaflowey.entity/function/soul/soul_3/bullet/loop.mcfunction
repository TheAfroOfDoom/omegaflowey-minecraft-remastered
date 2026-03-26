$execute unless entity $(executor_uuid) run return run \
  function omegaflowey.entity:soul/soul_3/bullet/terminate

execute if entity @s[tag=is_east] run teleport @s ~-0.4 ~ ~
execute if entity @s[tag=!is_east] run teleport @s ~0.4 ~ ~

# Terminate bullets once they go far enough in the +/- X direction
execute store result score @s omegaflowey.soul.bullet.position.x run data get entity @s Pos[0] 100

execute if score @s[tag=is_east] omegaflowey.soul.bullet.position.x matches ..-950 run return run \
  function omegaflowey.entity:soul/soul_3/bullet/terminate

execute if score @s[tag=!is_east] omegaflowey.soul.bullet.position.x matches 1050.. run return run \
  function omegaflowey.entity:soul/soul_3/bullet/terminate
