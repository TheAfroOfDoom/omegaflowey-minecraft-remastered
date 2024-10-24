tag @s remove omegaflowey.player.room.is_within.back_cave
tag @s remove omegaflowey.player.room.is_within.back_cave.waterfall_secret

# back_cave
tag @s[x=-157, dx=16, y=36, dy=12, z=18, dz=28] add omegaflowey.player.room.is_within.back_cave

execute if entity @s[tag=!omegaflowey.player.room.back_cave, tag=omegaflowey.player.room.is_within.back_cave] run \
  function omegaflowey.entity:player/room/underground/back_cave/enter
execute if entity @s[tag=omegaflowey.player.room.back_cave, tag=!omegaflowey.player.room.is_within.back_cave] run \
  function omegaflowey.entity:player/room/underground/back_cave/exit

tag @s remove omegaflowey.player.room.is_within.back_cave.waterfall_secret

# back_cave.waterfall_secret
tag @s[x=-155, dx=7, y=43, dy=5, z=18, dz=8] add omegaflowey.player.room.is_within.back_cave.waterfall_secret

execute if entity @s[tag=!omegaflowey.player.room.back_cave.waterfall_secret, tag=omegaflowey.player.room.is_within.back_cave.waterfall_secret] run \
  function omegaflowey.entity:player/room/underground/back_cave/waterfall_secret/enter
execute if entity @s[tag=omegaflowey.player.room.back_cave.waterfall_secret, tag=!omegaflowey.player.room.is_within.back_cave.waterfall_secret] run \
  function omegaflowey.entity:player/room/underground/back_cave/waterfall_secret/exit
