# @batch omegaflowey.utils:math.distance_squared
# @beforebatch: function omegaflowey.utils:test_setup/math/distance_squared

## cases
# negative points
data merge storage omegaflowey:utils.math.distance_squared { x0: -2, y0: -6, z0: -20 }
data merge storage omegaflowey:utils.math.distance_squared { x1: 1, y1: 2, z1: 3 }
function omegaflowey.utils:math/distance_squared
execute store result score #omegaflowey.utils:math.distance_squared omegaflowey.math.0 run data get storage omegaflowey:utils.math.distance_squared out
assert score #omegaflowey.utils:math.distance_squared omegaflowey.math.0 matches 602
