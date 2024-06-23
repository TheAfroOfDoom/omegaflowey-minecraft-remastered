# Randomize delta-x-position of indicator at (x: player.Position.x, dx: [-0.50..0.50])
# TODO(41): validate this dx range
execute store result score @s attack.position.x run data get entity @s Pos[0] 100
execute store result score @s math.0 run random value -50..50
scoreboard players operation @s attack.position.x += @s math.0

# Bound `attack.position.x` within arena between x: [-21.00, 21.00]
data merge storage utils:math.max { a: -2100 }
execute store result storage utils:math.max b int 1 run scoreboard players get @s attack.position.x
function utils:math/max
execute store result score @s attack.position.x run data get storage utils:math.max out
data merge storage utils:math.min { a: 2100 }
execute store result storage utils:math.min b int 1 run scoreboard players get @s attack.position.x
function utils:math/min
execute store result score @s attack.position.x run data get storage utils:math.min out

# Randomize delta-z-position of indicator at (z: player.Position.z, dx: [-1.00..1.00])
# TODO(41): validate this dz range
execute store result score @s attack.position.z run data get entity @s Pos[2] 100
execute store result score @s math.0 run random value -100..100
scoreboard players operation @s attack.position.z += @s math.0

# Bound `attack.position.z` within arena between z: [-3.00, 18.00]
data merge storage utils:math.max { a: -300 }
execute store result storage utils:math.max b int 1 run scoreboard players get @s attack.position.z
function utils:math/max
execute store result score @s attack.position.z run data get storage utils:math.max out
data merge storage utils:math.min { a: 1800 }
execute store result storage utils:math.min b int 1 run scoreboard players get @s attack.position.z
function utils:math/min
execute store result score @s attack.position.z run data get storage utils:math.min out

# Store new position to NBT
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s attack.position.x
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s attack.position.z
