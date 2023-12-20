# @batch utils:math

# setup
data remove storage utils:math.vector.dot u
data remove storage utils:math.vector.dot v
data remove storage utils:math.vector.dot out
scoreboard players reset *
function omega-flowey:setup

# cases
data merge storage utils:math.vector.dot { u: { x: 0, y: 0, z: 0 }, v: { x: 0, y: 0, z: 0 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches 0

data merge storage utils:math.vector.dot { u: { x: 1, y: 0, z: 0 }, v: { x: 0, y: 1, z: 0 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches 0

data merge storage utils:math.vector.dot { u: { x: 1, y: 0, z: 0 }, v: { x: 1, y: 0, z: 0 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches 100

data merge storage utils:math.vector.dot { u: { x: -1, y: 0, z: 0 }, v: { x: 1, y: 0, z: 0 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches -100

data merge storage utils:math.vector.dot { u: { x: 2, y: 0, z: 5 }, v: { x: 1, y: 0, z: -1 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches -300

data merge storage utils:math.vector.dot { u: { x: 1, y: 2, z: 3 }, v: { x: 4, y: 5, z: 6 } }
function utils:math/vector/dot
execute store result score #utils:math.vector.dot math.0 run data get storage utils:math.vector.dot out
assert score #utils:math.vector.dot math.0 matches 3200
