tag @s add omegaflowey.room.is_within.underground
execute \
  unless entity @s[x=67, dx=14, y=47, dy=45, z=-21, dz=11] \
  run tag @s remove omegaflowey.room.is_within.underground

# Special exit logic if player enters the exit hallway
# execute if entity @s[tag=omegaflowey.player.room.underground, x=-131, dx=7, y=39, dy=11, z=12, dz=3] \
#   run tag @s add omegaflowey.player.room.underground.exit_hall
# execute if entity @s[tag=omegaflowey.player.room.underground.exit_hall] run function omegaflowey:entity/player/room/underground/exit/hallway

execute if entity @s[tag=!omegaflowey.player.room.underground, tag=omegaflowey.room.is_within.underground] run \
  function omegaflowey:entity/player/room/underground/enter
execute if entity @s[tag=omegaflowey.player.room.underground, tag=!omegaflowey.room.is_within.underground] run \
  function omegaflowey:entity/player/room/underground/exit

execute if entity @s[tag=!omegaflowey.player.room.underground] run return 0

# Detect what sub-room this player is in for telemetry
execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

# # TAG_SUMMIT_2026_HARDCODED_PARKOUR_FULL
# execute if entity @s[x=-122, dx=27, y=41, dy=14, z=31, dz=14] run return run \
#   function omegaflowey:entity/player/room/underground/parkour/check
# function omegaflowey:entity/player/room/underground/back_cave/check
