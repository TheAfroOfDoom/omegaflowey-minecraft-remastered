# @batch omegaflowey.utils:math.distance_squared
# @beforebatch: function omegaflowey.utils:test_setup/math/distance_squared

## cases
# decimal points, generally
data merge storage utils:math.distance_squared { x0: 0, y0: 0, z0: 0 }
data merge storage utils:math.distance_squared { x1: 1.1, y1: 2.2, z1: 3.3 }
function omegaflowey.utils:math/distance_squared
execute store result score #omegaflowey.utils:math.distance_squared omegaflowey.math.0 run data get storage utils:math.distance_squared out 100
assert score #omegaflowey.utils:math.distance_squared omegaflowey.math.0 matches 1694
execute store result score #omegaflowey.utils:math.distance_squared omegaflowey.math.0 run data get storage utils:math.distance_squared out
# actual value is 16.94, but if you store to a score without upscaling you'd get it floored to 16
assert score #omegaflowey.utils:math.distance_squared omegaflowey.math.0 matches 16
