# @batch utils:math.distance_squared
# @beforebatch: function utils:test_setup/math/distance_squared

## cases
# negative points
data merge storage utils:math.distance_squared { x0: -2, y0: -6, z0: -20 }
data merge storage utils:math.distance_squared { x1: 1, y1: 2, z1: 3 }
function utils:math/distance_squared
execute store result score #utils:math.distance_squared math.0 run data get storage utils:math.distance_squared out
assert score #utils:math.distance_squared math.0 matches 602
