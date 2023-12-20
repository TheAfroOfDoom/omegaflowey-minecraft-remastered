# inputs:
#   a: int
#   b: int
# outputs:
#   out: the lower value between `a` and `b` (Math.min(a, b))
execute store result score #utils:math.min math.0 run data get storage utils:math.min a
execute store result score #utils:math.min math.1 run data get storage utils:math.min b
execute store result storage utils:math.min out int 1 run scoreboard players get #utils:math.min math.0
execute if score #utils:math.min math.0 > #utils:math.min math.1 store result storage utils:math.min out int 1 run scoreboard players get #utils:math.min math.1
