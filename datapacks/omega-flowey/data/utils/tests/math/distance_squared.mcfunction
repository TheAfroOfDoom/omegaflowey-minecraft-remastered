# @batch utils:math

# setup
data remove storage utils:math.distance_squared x0
data remove storage utils:math.distance_squared x1
data remove storage utils:math.distance_squared y0
data remove storage utils:math.distance_squared y1
data remove storage utils:math.distance_squared z0
data remove storage utils:math.distance_squared z1
data remove storage utils:math.distance_squared out
function omega-flowey:reset

## cases
# 0-distance (same point)
data merge storage utils:math.distance_squared { x0: 0, y0: 0, z0: 0 }
data merge storage utils:math.distance_squared { x1: 0, y1: 0, z1: 0 }
function utils:math/distance_squared
execute store result score #utils:math.distance_squared math.0 run data get storage utils:math.distance_squared out
assert score #utils:math.distance_squared math.0 matches 0

# integer points
data merge storage utils:math.distance_squared { x0: 0, y0: 0, z0: 0 }
data merge storage utils:math.distance_squared { x1: 1, y1: 2, z1: 3 }
function utils:math/distance_squared
execute store result score #utils:math.distance_squared math.0 run data get storage utils:math.distance_squared out
assert score #utils:math.distance_squared math.0 matches 14

# commutative
data merge storage utils:math.distance_squared { x0: 1, y0: 2, z0: 3 }
data merge storage utils:math.distance_squared { x1: 0, y1: 0, z1: 0 }
function utils:math/distance_squared
execute store result score #utils:math.distance_squared math.0 run data get storage utils:math.distance_squared out
assert score #utils:math.distance_squared math.0 matches 14

# decimal points, generally
data merge storage utils:math.distance_squared { x0: 0, y0: 0, z0: 0 }
data merge storage utils:math.distance_squared { x1: 1.1, y1: 2.2, z1: 3.3 }
function utils:math/distance_squared
execute store result score #utils:math.distance_squared math.0 run data get storage utils:math.distance_squared out 100
assert score #utils:math.distance_squared math.0 matches 1694
execute store result score #utils:math.distance_squared math.0 run data get storage utils:math.distance_squared out
# actual value is 16.94, but if you store to a score without upscaling you'd get it floored to 16
assert score #utils:math.distance_squared math.0 matches 16

# decimal points but only up to the hundredths place
# (same inputs as above up to hundredths place => same output)
data merge storage utils:math.distance_squared { x0: 0, y0: 0, z0: 0 }
data merge storage utils:math.distance_squared { x1: 1.109, y1: 2.205, z1: 3.305 }
function utils:math/distance_squared
execute store result score #utils:math.distance_squared math.0 run data get storage utils:math.distance_squared out 100
assert score #utils:math.distance_squared math.0 matches 1694
execute store result score #utils:math.distance_squared math.0 run data get storage utils:math.distance_squared out 10000
assert score #utils:math.distance_squared math.0 matches 169400

# negative points
data merge storage utils:math.distance_squared { x0: -2, y0: -6, z0: -20 }
data merge storage utils:math.distance_squared { x1: 1, y1: 2, z1: 3 }
function utils:math/distance_squared
execute store result score #utils:math.distance_squared math.0 run data get storage utils:math.distance_squared out
assert score #utils:math.distance_squared math.0 matches 602
