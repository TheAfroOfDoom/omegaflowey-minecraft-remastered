# @batch utils:math

# setup
data remove storage utils:math.vector.dot u
data remove storage utils:math.vector.dot v
data remove storage utils:math.vector.dot out
function omega-flowey:reset

## cases
# 0-vectors
data merge storage utils:math.vector.dot { u: { x: 0, y: 0, z: 0 }, v: { x: 0, y: 0, z: 0 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches 0

# mismatched axes -> 0
data merge storage utils:math.vector.dot { u: { x: 1, y: 0, z: 0 }, v: { x: 0, y: 1, z: 0 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches 0

# single axis
data merge storage utils:math.vector.dot { u: { x: 1, y: 0, z: 0 }, v: { x: 1, y: 0, z: 0 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches 100

# negative values
data merge storage utils:math.vector.dot { u: { x: -1, y: 0, z: 0 }, v: { x: 1, y: 0, z: 0 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches -100

# positive + negative values
data merge storage utils:math.vector.dot { u: { x: 2, y: 0, z: 5 }, v: { x: 1, y: 0, z: -1 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches -300

# full vectors
data merge storage utils:math.vector.dot { u: { x: 1, y: 2, z: 3 }, v: { x: 4, y: 5, z: 6 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches 3200

# supports decimal values up to 100th place
data merge storage utils:math.vector.dot { u: { x: 1.5, y: 2.1, z: 3.12 }, v: { x: 3, y: 5, z: 7 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches 3684
