# inputs:
#   a: int
#   b: int
# outputs:
#   out: the higher value between `a` and `b` (Math.max(a, b))
execute store result score @s math.0 run data get storage utils:math.max a
execute store result score @s math.1 run data get storage utils:math.max b
execute store result storage utils:math.max out int 1 run scoreboard players get @s math.0
execute if score @s math.0 < @s math.1 store result storage utils:math.max out int 1 run scoreboard players get @s math.1
