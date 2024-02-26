$execute store result storage soul:soul_0.bandaid velocity float 0.000001 run data get storage soul:soul_0.bandaid gravity $(velocity_constant)
$execute store result storage soul:soul_0.bandaid rotation float 0.000001 run data get storage soul:soul_0.bandaid gravity $(rotation_constant)

# rotation bounds: [-2, -10]
data merge storage utils:math.min { a: -200 }
execute store result storage utils:math.min b int 1 run data get storage soul:soul_0.bandaid rotation 100
function utils:math/min
execute store result score @s math.0 run data get storage utils:math.min out

data merge storage utils:math.max { a: -1000 }
execute store result storage utils:math.max b int 1 run scoreboard players get @s math.0
function utils:math/max

execute store result storage soul:soul_0.bandaid rotation float 0.01 run data get storage utils:math.max out

# velocity bounds: [0.1, 0.4]
data merge storage utils:math.min { a: 40 }
execute store result storage utils:math.min b int 1 run data get storage soul:soul_0.bandaid velocity 100
function utils:math/min
execute store result score @s math.0 run data get storage utils:math.min out

data merge storage utils:math.max { a: 10 }
execute store result storage utils:math.max b int 1 run scoreboard players get @s math.0
function utils:math/max

execute store result storage soul:soul_0.bandaid velocity float 0.01 run data get storage utils:math.max out

function entity:soul/soul_0/bandaid/loop/move with storage soul:soul_0.bandaid
