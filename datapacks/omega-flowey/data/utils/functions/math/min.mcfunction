# inputs:
#   a: int
#   b: int
# outputs:
#   out: the lower value between `a` and `b` (Math.min(a, b))
execute store result score @s math.0 run data get storage utils:math.min a
execute store result score @s math.1 run data get storage utils:math.min b
execute store result storage utils:math.min out int 1 run scoreboard players get @s math.0
execute if score @s math.0 > @s math.1 store result storage utils:math.min out int 1 run scoreboard players get @s math.1
