# inputs:
#   a: int
#   b: int
# outputs:
#   out: the higher value between `a` and `b` (omegaflowey.math.max(a, b))
execute store result score #omegaflowey.utils:math.max omegaflowey.math.0 run data get storage utils:math.max a
execute store result score #omegaflowey.utils:math.max omegaflowey.math.1 run data get storage utils:math.max b
execute store result storage utils:math.max out int 1 run scoreboard players get #omegaflowey.utils:math.max omegaflowey.math.0
execute if score #omegaflowey.utils:math.max omegaflowey.math.0 < #omegaflowey.utils:math.max omegaflowey.math.1 store result storage utils:math.max out int 1 run scoreboard players get #omegaflowey.utils:math.max omegaflowey.math.1
