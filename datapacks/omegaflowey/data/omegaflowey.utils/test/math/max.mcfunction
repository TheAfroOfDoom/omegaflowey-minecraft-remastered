# @batch omegaflowey.utils:math

# setup
data remove storage utils:math.max a
data remove storage utils:math.max b
data remove storage utils:math.max out
function omegaflowey.main:reset

## cases
data merge storage utils:math.max { a: 10, b: 10 }
function omegaflowey.utils:math/max
execute store result score #utils:math.max math.0 run data get storage utils:math.max out
assert score #utils:math.max math.0 matches 10

data merge storage utils:math.max { a: 0, b: 1 }
function omegaflowey.utils:math/max
execute store result score #utils:math.max math.0 run data get storage utils:math.max out
assert score #utils:math.max math.0 matches 1

data merge storage utils:math.max { a: 2, b: 1 }
function omegaflowey.utils:math/max
execute store result score #utils:math.max math.0 run data get storage utils:math.max out
assert score #utils:math.max math.0 matches 2
