# @batch utils:math

# setup
data remove storage utils:math.min a
data remove storage utils:math.min b
data remove storage utils:math.min out
function omega-flowey:reset

## cases
data merge storage utils:math.min { a: 10, b: 10 }
function utils:math/min
execute store result score #utils:math.min math.0 run data get storage utils:math.min out
assert score #utils:math.min math.0 matches 10

data merge storage utils:math.min { a: 0, b: 1 }
function utils:math/min
execute store result score #utils:math.min math.0 run data get storage utils:math.min out
assert score #utils:math.min math.0 matches 0

data merge storage utils:math.min { a: 2, b: 1 }
function utils:math/min
execute store result score #utils:math.min math.0 run data get storage utils:math.min out
assert score #utils:math.min math.0 matches 1
