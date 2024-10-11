## Detects if the player is within the booth generally
# Only run more detailed room logic if the player is in the booth's bounds
tag @s remove omegaflowey.room.is_within.global
# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute if entity @s[x=-186, dx=91, y=12, dy=93, z=12, dz=95] run tag @s add omegaflowey.room.is_within.global

execute if entity @s[tag=!omegaflowey.player, tag=omegaflowey.room.is_within.global] run function entity:player/room/enter
execute if entity @s[tag=omegaflowey.player, tag=!omegaflowey.room.is_within.global] run function entity:player/room/exit

execute if entity @s[tag=!omegaflowey.player] run return 0
function entity:player/room/tick
