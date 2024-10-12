# inputs:
#   a: int
#   b: int
# outputs:
#   out: the lower value between `a` and `b` (omegaflowey.math.min(a, b))
execute store result score #omegaflowey.utils:math.min omegaflowey.math.0 run data get storage utils:math.min a
execute store result score #omegaflowey.utils:math.min omegaflowey.math.1 run data get storage utils:math.min b
execute store result storage utils:math.min out int 1 run scoreboard players get #omegaflowey.utils:math.min omegaflowey.math.0
execute if score #omegaflowey.utils:math.min omegaflowey.math.0 > #omegaflowey.utils:math.min omegaflowey.math.1 store result storage utils:math.min out int 1 run scoreboard players get #omegaflowey.utils:math.min omegaflowey.math.1
