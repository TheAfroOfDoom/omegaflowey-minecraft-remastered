# Check if any of this bandaid's locator's hitboxes intersect with a player
scoreboard players set #soul_5.bandaid_touched_player soul.flag 0
function animated_java:soul_5_bandaid/as_own_locator_entities { command: 'function entity:soul/soul_5/bandaid/loop/as_locator with entity @s data' }
execute if score #soul_5.bandaid_touched_player soul.flag matches 1 run function entity:soul/soul_5/bandaid/heal
execute if score #soul_5.bandaid_touched_player soul.flag matches 1 run return 0

# Calculate distance to nearest player
data modify storage utils:math.distance_squared x0 set from entity @s Pos[0]
data modify storage utils:math.distance_squared y0 set from entity @s Pos[1]
data modify storage utils:math.distance_squared z0 set from entity @s Pos[2]
execute as @p[team=player] at @s positioned ~ 34.0 ~ run function entity:soul/soul_5/bandaid/loop/as_player

function utils:math/distance_squared

# Move towards nearest player like gravity -- inverse squared relationship of acceleration (velocity) : distance
scoreboard players set @s math.0 1000000
execute store result score @s math.1 run data get storage utils:math.distance_squared out
scoreboard players operation @s math.0 /= @s math.1
execute store result storage soul:soul_5.bandaid gravity int 1 run scoreboard players get @s math.0

# NOTE: you can tune these constants to tune the effect of "gravity" on how fast the bandaid rotates / moves towards the player
# TODO(88): tune these velocity/rotation constants
data merge storage soul:soul_5.bandaid { velocity_constant: 20, rotation_constant: -500 }
function entity:soul/soul_5/bandaid/loop/pre_move with storage soul:soul_5.bandaid

# TODO(89): looks ugly when the bandaid models overlap
