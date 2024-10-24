## Detects if the player is within the booth generally
# Only run more detailed room logic if the player is in the booth's bounds
tag @s remove omegaflowey.room.is_within.global
# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute if entity @s[x=-186, dx=91, y=10, dy=95, z=12, dz=95] run tag @s add omegaflowey.room.is_within.global

execute if entity @s[tag=!omegaflowey.player, tag=omegaflowey.room.is_within.global] run function omegaflowey.entity:player/room/enter
execute if entity @s[tag=omegaflowey.player, tag=!omegaflowey.room.is_within.global] run function omegaflowey.entity:player/room/exit

execute if entity @s[tag=!omegaflowey.player] run return 0
function omegaflowey.entity:player/room/tick
