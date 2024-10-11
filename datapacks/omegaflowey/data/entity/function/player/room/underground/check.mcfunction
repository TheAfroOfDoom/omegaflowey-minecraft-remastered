tag @s add omegaflowey.room.is_within.underground
execute \
  unless entity @s[x=-142, dx=46, y=40, dy=17, z=15, dz=30] \
  unless entity @s[x=-130, dx=12, y=36, dy=8, z=39, dz=14] \
  unless entity @s[x=-116, dx=15, y=55, dy=13, z=27, dz=12] \
  unless entity @s[x=-131, dx=7, y=39, dy=11, z=12, dz=3] \
  unless entity @s[x=-160, dx=21, y=32, dy=19, z=16, dz=32] \
  run tag @s remove omegaflowey.room.is_within.underground

# Special exit logic if player enters the exit hallway
execute if entity @s[tag=omegaflowey.player.room.underground, x=-131, dx=7, y=39, dy=11, z=12, dz=3] \
  run tag @s add omegaflowey.player.room.underground.exit_hall
execute if entity @s[tag=omegaflowey.player.room.underground.exit_hall] run function entity:player/room/underground/exit/hallway

execute if entity @s[tag=!omegaflowey.player.room.underground, tag=omegaflowey.room.is_within.underground] run \
  function entity:player/room/underground/enter
execute if entity @s[tag=omegaflowey.player.room.underground, tag=!omegaflowey.room.is_within.underground] run \
  function entity:player/room/underground/exit
