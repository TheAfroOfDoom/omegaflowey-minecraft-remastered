$execute store result storage omegaflowey:soul.0.bandaid velocity float 0.000001 run data get storage omegaflowey:soul.0.bandaid gravity $(velocity_constant)
$execute store result storage omegaflowey:soul.0.bandaid rotation float 0.000001 run data get storage omegaflowey:soul.0.bandaid gravity $(rotation_constant)

# TODO(88): validate bandaid rotation velocity bounds
# rotation bounds: [-2, -10]
data merge storage omegaflowey:utils.math.min { a: -200 }
execute store result storage omegaflowey:utils.math.min b int 1 run data get storage omegaflowey:soul.0.bandaid rotation 100
function omegaflowey.utils:math/min
execute store result score @s omegaflowey.math.0 run data get storage omegaflowey:utils.math.min out

data merge storage omegaflowey:utils.math.max { a: -1000 }
execute store result storage omegaflowey:utils.math.max b int 1 run scoreboard players get @s omegaflowey.math.0
function omegaflowey.utils:math/max

execute store result storage omegaflowey:soul.0.bandaid rotation float 0.01 run data get storage omegaflowey:utils.math.max out

# TODO(88): validate bandaid XY velocity bounds
# velocity bounds: [0.1, 0.4]
data merge storage omegaflowey:utils.math.min { a: 40 }
execute store result storage omegaflowey:utils.math.min b int 1 run data get storage omegaflowey:soul.0.bandaid velocity 100
function omegaflowey.utils:math/min
execute store result score @s omegaflowey.math.0 run data get storage omegaflowey:utils.math.min out

data merge storage omegaflowey:utils.math.max { a: 10 }
execute store result storage omegaflowey:utils.math.max b int 1 run scoreboard players get @s omegaflowey.math.0
function omegaflowey.utils:math/max

# If there are no players alive, the bandaid will rotate at its minimum bound
execute unless entity @a[tag=omegaflowey.player.fighting_flowey] run data merge storage omegaflowey:soul.0.bandaid { rotation: -2.0f }

execute store result storage omegaflowey:soul.0.bandaid velocity float 0.01 run data get storage omegaflowey:utils.math.max out

function omegaflowey.entity:soul/soul_0/bandaid/loop/move with storage omegaflowey:soul.0.bandaid
