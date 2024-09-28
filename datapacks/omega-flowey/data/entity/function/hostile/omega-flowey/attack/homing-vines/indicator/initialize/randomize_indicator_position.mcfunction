# Randomize delta-x-position of indicator at (x: player.Position.x, dx: [-0.50..0.50])
# TODO(41): validate this dx range
execute store result score @s attack.position.x run data get entity @s Pos[0] 100
execute store result score @s math.0 run random value -50..50
scoreboard players operation @s attack.position.x += @s math.0

# Bound `attack.position.x` within arena
# lower-bound
scoreboard players set @s math.0 -2100
scoreboard players operation @s math.0 += #omega-flowey.bossfight.summit.origin.x global.flag
execute store result storage utils:math.max a int 1 run scoreboard players get @s math.0
execute store result storage utils:math.max b int 1 run scoreboard players get @s attack.position.x
function utils:math/max
execute store result score @s attack.position.x run data get storage utils:math.max out
# upper-bound
scoreboard players set @s math.0 2100
scoreboard players operation @s math.0 += #omega-flowey.bossfight.summit.origin.x global.flag
execute store result storage utils:math.max a int 1 run scoreboard players get @s math.0
execute store result storage utils:math.min b int 1 run scoreboard players get @s attack.position.x
function utils:math/min
execute store result score @s attack.position.x run data get storage utils:math.min out

# Randomize delta-z-position of indicator at (z: player.Position.z, dx: [-1.00..1.00])
# TODO(41): validate this dz range
execute store result score @s attack.position.z run data get entity @s Pos[2] 100
execute store result score @s math.0 run random value -100..100
scoreboard players operation @s attack.position.z += @s math.0

# Bound `attack.position.z` within arena
# lower-bound
scoreboard players set @s math.0 -3050
scoreboard players operation @s math.0 += #omega-flowey.bossfight.summit.origin.z global.flag
execute store result storage utils:math.max a int 1 run scoreboard players get @s math.0
execute store result storage utils:math.max b int 1 run scoreboard players get @s attack.position.z
function utils:math/max
execute store result score @s attack.position.z run data get storage utils:math.max out
# upper-bound
scoreboard players set @s math.0 -950
scoreboard players operation @s math.0 += #omega-flowey.bossfight.summit.origin.z global.flag
execute store result storage utils:math.min a int 1 run scoreboard players get @s math.0
execute store result storage utils:math.min b int 1 run scoreboard players get @s attack.position.z
function utils:math/min
execute store result score @s attack.position.z run data get storage utils:math.min out

# Store new position to NBT
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s attack.position.x
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s attack.position.z
