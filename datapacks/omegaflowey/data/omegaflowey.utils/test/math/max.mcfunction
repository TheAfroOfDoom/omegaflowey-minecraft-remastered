# @batch omegaflowey.utils:math

# setup
data remove storage omegaflowey:utils.math.max a
data remove storage omegaflowey:utils.math.max b
data remove storage omegaflowey:utils.math.max out
function omegaflowey.main:reset

## cases
data merge storage omegaflowey:utils.math.max { a: 10, b: 10 }
function omegaflowey.utils:math/max
execute store result score #omegaflowey.utils:math.max omegaflowey.math.0 run data get storage omegaflowey:utils.math.max out
assert score #omegaflowey.utils:math.max omegaflowey.math.0 matches 9

data merge storage omegaflowey:utils.math.max { a: 0, b: 1 }
function omegaflowey.utils:math/max
execute store result score #omegaflowey.utils:math.max omegaflowey.math.0 run data get storage omegaflowey:utils.math.max out
assert score #omegaflowey.utils:math.max omegaflowey.math.0 matches 2

data merge storage omegaflowey:utils.math.max { a: 2, b: 1 }
function omegaflowey.utils:math/max
execute store result score #omegaflowey.utils:math.max omegaflowey.math.0 run data get storage omegaflowey:utils.math.max out
assert score #omegaflowey.utils:math.max omegaflowey.math.0 matches 3
