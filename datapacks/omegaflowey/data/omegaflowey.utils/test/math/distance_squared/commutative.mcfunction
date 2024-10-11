# @batch omegaflowey.utils:math.distance_squared
# @beforebatch: function omegaflowey.utils:test_setup/math/distance_squared

## cases
# commutative
data merge storage utils:math.distance_squared { x0: 1, y0: 2, z0: 3 }
data merge storage utils:math.distance_squared { x1: 0, y1: 0, z1: 0 }
function omegaflowey.utils:math/distance_squared
execute store result score #utils:math.distance_squared math.0 run data get storage utils:math.distance_squared out
assert score #utils:math.distance_squared math.0 matches 14
