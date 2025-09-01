# XZ acceleration =   -0.25 blocks/tick^2
scoreboard players remove @s omegaflowey.attack.velocity 25

data modify storage omegaflowey:utils.math.max a set value 0
execute store result storage omegaflowey:utils.math.max b int 1 run scoreboard players get @s omegaflowey.attack.velocity
function omegaflowey.utils:math/max
execute store result score @s omegaflowey.attack.velocity run data get storage omegaflowey:utils.math.max out
