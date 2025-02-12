# Randomize delta-x-position of indicator at (x: omegaflowey.player.Position.x, dx: [-0.50..0.50])
# TODO(41): validate this dx range
execute store result score @s omegaflowey.attack.position.x run data get entity @s Pos[0] 100
execute store result score @s omegaflowey.math.0 run random value -50..50
scoreboard players operation @s omegaflowey.attack.position.x += @s omegaflowey.math.0

# Bound `omegaflowey.attack.position.x` within arena
# lower-bound
scoreboard players set @s omegaflowey.math.0 -1400
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag
execute store result storage omegaflowey:utils.math.max a int 1 run scoreboard players get @s omegaflowey.math.0
execute store result storage omegaflowey:utils.math.max b int 1 run scoreboard players get @s omegaflowey.attack.position.x
function omegaflowey.utils:math/max
execute store result score @s omegaflowey.attack.position.x run data get storage omegaflowey:utils.math.max out
# upper-bound
scoreboard players set @s omegaflowey.math.0 1400
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag
execute store result storage omegaflowey:utils.math.min a int 1 run scoreboard players get @s omegaflowey.math.0
execute store result storage omegaflowey:utils.math.min b int 1 run scoreboard players get @s omegaflowey.attack.position.x
function omegaflowey.utils:math/min
execute store result score @s omegaflowey.attack.position.x run data get storage omegaflowey:utils.math.min out

# Bound y-position so it doesn't aim the blinking lane too high, else
# we can see the blinking lane aboveground sometimes
execute store result score @s omegaflowey.attack.position.y run data get entity @s Pos[1] 100
scoreboard players set @s omegaflowey.math.0 400
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.y omegaflowey.global.flag
execute store result storage omegaflowey:utils.math.min a int 1 run scoreboard players get @s omegaflowey.math.0
execute store result storage omegaflowey:utils.math.min b int 1 run scoreboard players get @s omegaflowey.attack.position.y
function omegaflowey.utils:math/min
execute store result score @s omegaflowey.attack.position.y run data get storage omegaflowey:utils.math.min out

# Randomize delta-z-position of indicator at (z: omegaflowey.player.Position.z, dx: [-1.00..1.00])
# TODO(41): validate this dz range
execute store result score @s omegaflowey.attack.position.z run data get entity @s Pos[2] 100
execute store result score @s omegaflowey.math.0 run random value -100..100
scoreboard players operation @s omegaflowey.attack.position.z += @s omegaflowey.math.0

# Bound `omegaflowey.attack.position.z` within arena
# lower-bound
scoreboard players set @s omegaflowey.math.0 -3050
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.z omegaflowey.global.flag
execute store result storage omegaflowey:utils.math.max a int 1 run scoreboard players get @s omegaflowey.math.0
execute store result storage omegaflowey:utils.math.max b int 1 run scoreboard players get @s omegaflowey.attack.position.z
function omegaflowey.utils:math/max
execute store result score @s omegaflowey.attack.position.z run data get storage omegaflowey:utils.math.max out
# upper-bound
scoreboard players set @s omegaflowey.math.0 -950
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.z omegaflowey.global.flag
execute store result storage omegaflowey:utils.math.min a int 1 run scoreboard players get @s omegaflowey.math.0
execute store result storage omegaflowey:utils.math.min b int 1 run scoreboard players get @s omegaflowey.attack.position.z
function omegaflowey.utils:math/min
execute store result score @s omegaflowey.attack.position.z run data get storage omegaflowey:utils.math.min out

# Store new position to NBT
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s omegaflowey.attack.position.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s omegaflowey.attack.position.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s omegaflowey.attack.position.z
