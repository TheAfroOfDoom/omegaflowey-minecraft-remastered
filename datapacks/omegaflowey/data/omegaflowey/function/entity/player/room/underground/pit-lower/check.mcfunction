tag @s add omegaflowey.room.is_within.underground.pit-lower
execute \
  unless entity @s[x=60, dx=21, y=47, dy=33, z=-27, dz=29] \
  run tag @s remove omegaflowey.room.is_within.underground.pit-lower

execute if entity @s[tag=!omegaflowey.player.room.underground.pit-lower, tag=omegaflowey.room.is_within.underground.pit-lower] run \
  function omegaflowey:entity/player/room/underground/pit-lower/enter
execute if entity @s[tag=omegaflowey.player.room.underground.pit-lower, tag=!omegaflowey.room.is_within.underground.pit-lower] run \
  function omegaflowey:entity/player/room/underground/pit-lower/exit

execute if entity @s[tag=!omegaflowey.player.room.underground.pit-lower] run return 0
