tag @s add omegaflowey.room.is_within.spectator_box
execute \
  unless entity @s[x=86, dx=7, y=18, dy=8, z=1, dz=9] \
  unless entity @s[x=92, dx=5, y=18, dy=7, z=5, dz=4] \
  unless entity @s[x=42, dx=52, y=-2, dy=37, z=-42, dz=55] \
  run tag @s remove omegaflowey.room.is_within.spectator_box

execute if entity @s[tag=!omegaflowey.player.room.spectator_box, tag=omegaflowey.room.is_within.spectator_box] run \
  function omegaflowey:entity/player/room/spectator_box/enter
execute if entity @s[tag=omegaflowey.player.room.spectator_box, tag=!omegaflowey.room.is_within.spectator_box] run \
  function omegaflowey:entity/player/room/spectator_box/exit
