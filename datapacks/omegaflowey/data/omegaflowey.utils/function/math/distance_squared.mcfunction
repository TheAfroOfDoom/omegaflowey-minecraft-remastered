# inputs:
#   x0, x1, y0, y1, z0, z1: float (first/second coordinates of points to compare with)
# outputs:
#   out: (the distance between points p0 and p1) squared

## logic here is copied and modified from function `mathf:dist-between-points`
## https://github.com/Up-Level/Mathf-Datapack/blob/6c84b91cd18f2236c7a2133ce9e82c68b1854db1/src/data/mathf/functions/dist-between-points.mcfunction

# sum of differences
scoreboard players set #omegaflowey.utils:math.distance_squared omegaflowey.math.0 0

# (x0 - x1)^2
execute store result score #omegaflowey.utils:math.distance_squared omegaflowey.math.1 run data get storage utils:math.distance_squared x0 100
execute store result score #omegaflowey.utils:math.distance_squared omegaflowey.math.2 run data get storage utils:math.distance_squared x1 100
scoreboard players operation #omegaflowey.utils:math.distance_squared omegaflowey.math.1 -= #omegaflowey.utils:math.distance_squared omegaflowey.math.2
scoreboard players operation #omegaflowey.utils:math.distance_squared omegaflowey.math.1 *= #omegaflowey.utils:math.distance_squared omegaflowey.math.1
scoreboard players operation #omegaflowey.utils:math.distance_squared omegaflowey.math.0 += #omegaflowey.utils:math.distance_squared omegaflowey.math.1

# (y0 - y1)^2
execute store result score #omegaflowey.utils:math.distance_squared omegaflowey.math.1 run data get storage utils:math.distance_squared y0 100
execute store result score #omegaflowey.utils:math.distance_squared omegaflowey.math.2 run data get storage utils:math.distance_squared y1 100
scoreboard players operation #omegaflowey.utils:math.distance_squared omegaflowey.math.1 -= #omegaflowey.utils:math.distance_squared omegaflowey.math.2
scoreboard players operation #omegaflowey.utils:math.distance_squared omegaflowey.math.1 *= #omegaflowey.utils:math.distance_squared omegaflowey.math.1
scoreboard players operation #omegaflowey.utils:math.distance_squared omegaflowey.math.0 += #omegaflowey.utils:math.distance_squared omegaflowey.math.1

# (z0 - z1)^2
execute store result score #omegaflowey.utils:math.distance_squared omegaflowey.math.1 run data get storage utils:math.distance_squared z0 100
execute store result score #omegaflowey.utils:math.distance_squared omegaflowey.math.2 run data get storage utils:math.distance_squared z1 100
scoreboard players operation #omegaflowey.utils:math.distance_squared omegaflowey.math.1 -= #omegaflowey.utils:math.distance_squared omegaflowey.math.2
scoreboard players operation #omegaflowey.utils:math.distance_squared omegaflowey.math.1 *= #omegaflowey.utils:math.distance_squared omegaflowey.math.1
scoreboard players operation #omegaflowey.utils:math.distance_squared omegaflowey.math.0 += #omegaflowey.utils:math.distance_squared omegaflowey.math.1

# divide by 10000 since we multiplied each input coordinate by 100 to do integer math
execute store result storage utils:math.distance_squared out float 0.0001 run scoreboard players get #omegaflowey.utils:math.distance_squared omegaflowey.math.0
