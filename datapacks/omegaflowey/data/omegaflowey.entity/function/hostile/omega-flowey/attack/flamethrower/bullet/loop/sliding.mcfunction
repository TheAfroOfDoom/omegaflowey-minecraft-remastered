# XZ acceleration =   -0.04 blocks/tick^2
#                 =>  -0.8 blocks/s^2
scoreboard players remove @s omegaflowey.attack.velocity 4

# Min velocity
data modify storage omegaflowey:utils.math.max a set value 75
execute store result storage omegaflowey:utils.math.max b int 1 run scoreboard players get @s omegaflowey.attack.velocity
function omegaflowey.utils:math/max
execute store result score @s omegaflowey.attack.velocity run data get storage omegaflowey:utils.math.max out

# Move down a bit to simulate the flames getting smaller and to prevent z-fighting
teleport @s ~ ~-0.01 ~
