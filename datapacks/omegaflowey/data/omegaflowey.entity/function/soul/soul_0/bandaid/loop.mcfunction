# Check if any of this bandaid's locator's hitboxes intersect with a player
scoreboard players set #omegaflowey.soul.0.bandaid_touched_player omegaflowey.soul.flag 0
function animated_java:omegaflowey_soul_0_bandaid/as_all_locators { command: 'function omegaflowey.entity:soul/soul_0/bandaid/loop/as_locator with entity @s data' }
execute if score #omegaflowey.soul.0.bandaid_touched_player omegaflowey.soul.flag matches 1 run function omegaflowey.entity:soul/soul_0/bandaid/heal
execute if score #omegaflowey.soul.0.bandaid_touched_player omegaflowey.soul.flag matches 1 run return 0

# Calculate distance to nearest player
data modify storage omegaflowey:utils.math.distance_squared x0 set from entity @s Pos[0]
data modify storage omegaflowey:utils.math.distance_squared y0 set from entity @s Pos[1]
data modify storage omegaflowey:utils.math.distance_squared z0 set from entity @s Pos[2]
execute as @p[tag=omegaflowey.player.fighting_flowey] at @s positioned ~ 34.0 ~ run function omegaflowey.entity:soul/soul_0/bandaid/loop/as_player

function omegaflowey.utils:math/distance_squared

# Move towards nearest player like gravity -- inverse squared relationship of acceleration (velocity) : distance
scoreboard players set @s omegaflowey.math.0 1000000
execute store result score @s omegaflowey.math.1 run data get storage omegaflowey:utils.math.distance_squared out
scoreboard players operation @s omegaflowey.math.0 /= @s omegaflowey.math.1
execute store result storage omegaflowey:soul.0.bandaid gravity int 1 run scoreboard players get @s omegaflowey.math.0

# NOTE: you can tune these constants to tune the effect of "gravity" on how fast the bandaid rotates / moves towards the player
# TODO(88): tune these velocity/rotation constants
data merge storage omegaflowey:soul.0.bandaid { velocity_constant: 20, rotation_constant: -500 }
function omegaflowey.entity:soul/soul_0/bandaid/loop/pre_move with storage omegaflowey:soul.0.bandaid

# TODO(89): looks ugly when the bandaid models overlap
