# inputs:
#   a: int
#   b: int
# outputs:
#   out: the higher value between `a` and `b` (Math.max(a, b))
execute store result score #utils:math.max math.0 run data get storage utils:math.max a
execute store result score #utils:math.max math.1 run data get storage utils:math.max b
execute store result storage utils:math.max out int 1 run scoreboard players get #utils:math.max math.0
execute if score #utils:math.max math.0 < #utils:math.max math.1 store result storage utils:math.max out int 1 run scoreboard players get #utils:math.max math.1
