tag @s remove omegaflowey.player.room.is_within.parkour.start
tag @s remove omegaflowey.player.room.is_within.parkour.before_pillar
tag @s remove omegaflowey.player.room.is_within.parkour.behind_pillar
tag @s remove omegaflowey.player.room.is_within.parkour.south_wall
tag @s remove omegaflowey.player.room.is_within.parkour.south_glow_vines
tag @s remove omegaflowey.player.room.is_within.parkour.final_vines
tag @s remove omegaflowey.player.room.is_within.parkour.before_final_jump
tag @s remove omegaflowey.player.room.is_within.parkour.finish

# parkour.start
tag @s[x=-120.0, dx=0.0, y=45.0, dy=2.0, z=34.7, dz=-0.7] add omegaflowey.player.room.is_within.parkour.start

execute if entity @s[tag=!omegaflowey.player.room.parkour.start, tag=omegaflowey.player.room.is_within.parkour.start] run \
  function omegaflowey.entity:player/room/underground/parkour/start/enter
execute if entity @s[tag=omegaflowey.player.room.parkour.start, tag=!omegaflowey.player.room.is_within.parkour.start] run \
  function omegaflowey.entity:player/room/underground/parkour/start/exit

execute if entity @s[tag=omegaflowey.player.room.is_within.parkour.start] run return 0

# parkour.before_pillar
tag @s[x=-119.0, dx=0.0, y=43.5, dy=3.0, z=37.0, dz=1.0] add omegaflowey.player.room.is_within.parkour.before_pillar

execute if entity @s[tag=!omegaflowey.player.room.parkour.before_pillar, tag=omegaflowey.player.room.is_within.parkour.before_pillar] run \
  function omegaflowey.entity:player/room/underground/parkour/before_pillar/enter
execute if entity @s[tag=omegaflowey.player.room.parkour.before_pillar, tag=!omegaflowey.player.room.is_within.parkour.before_pillar] run \
  function omegaflowey.entity:player/room/underground/parkour/before_pillar/exit

execute if entity @s[tag=omegaflowey.player.room.is_within.parkour.before_pillar] run return 0

# parkour.behind_pillar
tag @s[x=-118.0, dx=1.0, y=45.0, dy=2.0, z=40.0, dz=1.0] add omegaflowey.player.room.is_within.parkour.behind_pillar

execute if entity @s[tag=!omegaflowey.player.room.parkour.behind_pillar, tag=omegaflowey.player.room.is_within.parkour.behind_pillar] run \
  function omegaflowey.entity:player/room/underground/parkour/behind_pillar/enter
execute if entity @s[tag=omegaflowey.player.room.parkour.behind_pillar, tag=!omegaflowey.player.room.is_within.parkour.behind_pillar] run \
  function omegaflowey.entity:player/room/underground/parkour/behind_pillar/exit

execute if entity @s[tag=omegaflowey.player.room.is_within.parkour.behind_pillar] run return 0

# parkour.south_wall
tag @s[x=-114.0, dx=1.0, y=46.0, dy=2.0, z=42.0, dz=0.0] add omegaflowey.player.room.is_within.parkour.south_wall

execute if entity @s[tag=!omegaflowey.player.room.parkour.south_wall, tag=omegaflowey.player.room.is_within.parkour.south_wall] run \
  function omegaflowey.entity:player/room/underground/parkour/south_wall/enter
execute if entity @s[tag=omegaflowey.player.room.parkour.south_wall, tag=!omegaflowey.player.room.is_within.parkour.south_wall] run \
  function omegaflowey.entity:player/room/underground/parkour/south_wall/exit

execute if entity @s[tag=omegaflowey.player.room.is_within.parkour.south_wall] run return 0

# parkour.south_glow_vines
execute \
  if entity @s[x=-108.0, dx=1.0, y=44.0, dy=8.0, z=39.0, dz=2.0] \
  if block ~ ~ ~ #omegaflowey.main:parkour/vines \
  run tag @s add omegaflowey.player.room.is_within.parkour.south_glow_vines

execute if entity @s[tag=!omegaflowey.player.room.parkour.south_glow_vines, tag=omegaflowey.player.room.is_within.parkour.south_glow_vines] run \
  function omegaflowey.entity:player/room/underground/parkour/south_glow_vines/enter
execute if entity @s[tag=omegaflowey.player.room.parkour.south_glow_vines, tag=!omegaflowey.player.room.is_within.parkour.south_glow_vines] run \
  function omegaflowey.entity:player/room/underground/parkour/south_glow_vines/exit

execute if entity @s[tag=omegaflowey.player.room.is_within.parkour.south_glow_vines] run return 0

# parkour.final_vines
execute \
  if entity @s[x=-105.0, dx=1.0, y=45.0, dy=7.0, z=37.0, dz=1.0] \
  if block ~ ~ ~ #omegaflowey.main:parkour/vines \
  run tag @s add omegaflowey.player.room.is_within.parkour.final_vines

execute if entity @s[tag=!omegaflowey.player.room.parkour.final_vines, tag=omegaflowey.player.room.is_within.parkour.final_vines] run \
  function omegaflowey.entity:player/room/underground/parkour/final_vines/enter
execute if entity @s[tag=omegaflowey.player.room.parkour.final_vines, tag=!omegaflowey.player.room.is_within.parkour.final_vines] run \
  function omegaflowey.entity:player/room/underground/parkour/final_vines/exit

execute if entity @s[tag=omegaflowey.player.room.is_within.parkour.final_vines] run return 0

# parkour.before_final_jump
tag @s[x=-103.0, dx=0.0, y=50.5, dy=2.0, z=39.0, dz=0.0] add omegaflowey.player.room.is_within.parkour.before_final_jump

execute if entity @s[tag=!omegaflowey.player.room.parkour.before_final_jump, tag=omegaflowey.player.room.is_within.parkour.before_final_jump] run \
  function omegaflowey.entity:player/room/underground/parkour/before_final_jump/enter
execute if entity @s[tag=omegaflowey.player.room.parkour.before_final_jump, tag=!omegaflowey.player.room.is_within.parkour.before_final_jump] run \
  function omegaflowey.entity:player/room/underground/parkour/before_final_jump/exit

execute if entity @s[tag=omegaflowey.player.room.is_within.parkour.before_final_jump] run return 0

# parkour.finish
tag @s[x=-99.0, dx=3.0, y=50.0, dy=5.0, z=39, dz=5] add omegaflowey.player.room.is_within.parkour.finish
tag @s[x=-100.0, dx=0.0, y=50.0, dy=5.0, z=41.0, dz=2.0] add omegaflowey.player.room.is_within.parkour.finish

execute if entity @s[tag=!omegaflowey.player.room.parkour.finish, tag=omegaflowey.player.room.is_within.parkour.finish] run \
  function omegaflowey.entity:player/room/underground/parkour/finish/enter
execute if entity @s[tag=omegaflowey.player.room.parkour.finish, tag=!omegaflowey.player.room.is_within.parkour.finish] run \
  function omegaflowey.entity:player/room/underground/parkour/finish/exit

execute if entity @s[tag=omegaflowey.player.room.is_within.parkour.finish] run return 0
