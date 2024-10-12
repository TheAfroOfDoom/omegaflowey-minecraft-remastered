scoreboard players set #omegaflowey.utils:math.vector.dot omegaflowey.math.0 0

$execute store result storage omegaflowey:utils.math.vector.dot out float $(x) run data get storage omegaflowey:utils.math.vector.dot u.x 100
execute store result score #omegaflowey.utils:math.vector.dot omegaflowey.math.1 run data get storage omegaflowey:utils.math.vector.dot out
scoreboard players operation #omegaflowey.utils:math.vector.dot omegaflowey.math.0 += #omegaflowey.utils:math.vector.dot omegaflowey.math.1

$execute store result storage omegaflowey:utils.math.vector.dot out float $(y) run data get storage omegaflowey:utils.math.vector.dot u.y 100
execute store result score #omegaflowey.utils:math.vector.dot omegaflowey.math.1 run data get storage omegaflowey:utils.math.vector.dot out
scoreboard players operation #omegaflowey.utils:math.vector.dot omegaflowey.math.0 += #omegaflowey.utils:math.vector.dot omegaflowey.math.1

$execute store result storage omegaflowey:utils.math.vector.dot out float $(z) run data get storage omegaflowey:utils.math.vector.dot u.z 100
execute store result score #omegaflowey.utils:math.vector.dot omegaflowey.math.1 run data get storage omegaflowey:utils.math.vector.dot out
scoreboard players operation #omegaflowey.utils:math.vector.dot omegaflowey.math.0 += #omegaflowey.utils:math.vector.dot omegaflowey.math.1

execute store result storage omegaflowey:utils.math.vector.dot out int 1 run scoreboard players get #omegaflowey.utils:math.vector.dot omegaflowey.math.0
