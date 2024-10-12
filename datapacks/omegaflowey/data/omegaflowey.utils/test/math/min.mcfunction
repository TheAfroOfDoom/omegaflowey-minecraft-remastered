# @batch omegaflowey.utils:math

# setup
data remove storage omegaflowey:utils.math.min a
data remove storage omegaflowey:utils.math.min b
data remove storage omegaflowey:utils.math.min out
function omegaflowey.main:reset

## cases
data merge storage omegaflowey:utils.math.min { a: 10, b: 10 }
function omegaflowey.utils:math/min
execute store result score #omegaflowey.utils:math.min omegaflowey.math.0 run data get storage omegaflowey:utils.math.min out
assert score #omegaflowey.utils:math.min omegaflowey.math.0 matches 10

data merge storage omegaflowey:utils.math.min { a: 0, b: 1 }
function omegaflowey.utils:math/min
execute store result score #omegaflowey.utils:math.min omegaflowey.math.0 run data get storage omegaflowey:utils.math.min out
assert score #omegaflowey.utils:math.min omegaflowey.math.0 matches 0

data merge storage omegaflowey:utils.math.min { a: 2, b: 1 }
function omegaflowey.utils:math/min
execute store result score #omegaflowey.utils:math.min omegaflowey.math.0 run data get storage omegaflowey:utils.math.min out
assert score #omegaflowey.utils:math.min omegaflowey.math.0 matches 1
