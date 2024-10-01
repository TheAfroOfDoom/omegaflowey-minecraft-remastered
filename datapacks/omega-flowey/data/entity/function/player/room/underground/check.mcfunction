tag @s add omegaflowey.room.is_within.underground
execute \
  unless entity @s[x=-142, dx=46, y=40, dy=17, z=15, dz=30] \
  unless entity @s[x=-130, dx=6, y=36, dy=8, z=39, dz=10] \
  unless entity @s[x=-116, dx=15, y=55, dy=13, z=27, dz=12] \
  run tag @s remove omegaflowey.room.is_within.underground

execute if entity @s[tag=!omegaflowey.player.room.underground, tag=omegaflowey.room.is_within.underground] run \
  function entity:player/room/underground/enter
execute if entity @s[tag=omegaflowey.player.room.underground, tag=!omegaflowey.room.is_within.underground] run \
  function entity:player/room/underground/exit
