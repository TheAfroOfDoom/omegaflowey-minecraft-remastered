tag @s add omegaflowey.room.is_within.underground
execute \
  unless entity @s[x=60, dx=19, y=78, dy=14, z=-19, dz=8] \
  unless entity @s[x=60, dx=21, y=47, dy=33, z=-27, dz=29] \
  unless entity @s[x=81, dx=28, y=47, dy=13, z=-28, dz=26] \
  unless entity @s[x=94, dx=21, y=18, dy=29, z=-21, dz=25] \
  unless entity @s[x=97, dx=18, y=18, dy=12, z=3, dz=9] \
  unless entity @s[x=69, dx=6, y=49, dy=8, z=-4, dz=6] \
  run tag @s remove omegaflowey.room.is_within.underground

# Special exit logic if player enters the exit hallway
execute if entity @s[ \
  tag=omegaflowey.player.room.underground, \
  x=69, dx=6, y=49, dy=8, z=-4, dz=6 \
] \
  run tag @s add omegaflowey.player.room.underground.exit_hall
execute if entity @s[tag=omegaflowey.player.room.underground.exit_hall] run function omegaflowey:entity/player/room/underground/exit/hallway

execute if entity @s[tag=!omegaflowey.player.room.underground, tag=omegaflowey.room.is_within.underground] run \
  function omegaflowey:entity/player/room/underground/enter
execute if entity @s[tag=omegaflowey.player.room.underground, tag=!omegaflowey.room.is_within.underground] run \
  function omegaflowey:entity/player/room/underground/exit

execute if entity @s[tag=!omegaflowey.player.room.underground] run return 0

function omegaflowey:entity/player/room/underground/pit-lower/check
