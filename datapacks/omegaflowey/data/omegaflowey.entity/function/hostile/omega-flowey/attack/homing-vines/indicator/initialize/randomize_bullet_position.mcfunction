# Randomize delta-x-position to summon bullet at (x: omegaflowey.player.Position.x, dx: [-15.00..15.00])
# TODO(41): validate this dx range
execute store result score @s omegaflowey.attack.position.x run data get entity @s Pos[0] 100
execute store result score @s omegaflowey.math.0 run random value -1500..1500
scoreboard players operation @s omegaflowey.attack.position.x += @s omegaflowey.math.0

# Bound `omegaflowey.attack.position.x` within arena
# lower-bound
scoreboard players set @s omegaflowey.math.0 -1800
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag
execute store result storage omegaflowey:utils.math.max a int 1 run scoreboard players get @s omegaflowey.math.0
execute store result storage omegaflowey:utils.math.max b int 1 run scoreboard players get @s omegaflowey.attack.position.x
function omegaflowey.utils:math/max
execute store result score @s omegaflowey.attack.position.x run data get storage omegaflowey:utils.math.max out
# upper-bound
scoreboard players set @s omegaflowey.math.0 1800
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag
execute store result storage omegaflowey:utils.math.min a int 1 run scoreboard players get @s omegaflowey.math.0
execute store result storage omegaflowey:utils.math.min b int 1 run scoreboard players get @s omegaflowey.attack.position.x
function omegaflowey.utils:math/min
execute store result score @s omegaflowey.attack.position.x run data get storage omegaflowey:utils.math.min out

# Randomize y-position to summon bullet at
execute store result score @s omegaflowey.attack.position.y run random value -300..300
scoreboard players operation @s omegaflowey.attack.position.y += #omegaflowey.bossfight.vanilla.origin.y omegaflowey.global.flag

# Set z-position to summon bullet at
scoreboard players set @s omegaflowey.attack.position.z -850
scoreboard players operation @s omegaflowey.attack.position.z += #omegaflowey.bossfight.vanilla.origin.z omegaflowey.global.flag

execute store result storage omegaflowey:attack.homing-vines x float 0.01 run scoreboard players get @s omegaflowey.attack.position.x
execute store result storage omegaflowey:attack.homing-vines y float 0.01 run scoreboard players get @s omegaflowey.attack.position.y
execute store result storage omegaflowey:attack.homing-vines z float 0.01 run scoreboard players get @s omegaflowey.attack.position.z
