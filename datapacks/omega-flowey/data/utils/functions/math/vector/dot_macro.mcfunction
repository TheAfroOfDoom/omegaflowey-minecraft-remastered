scoreboard players set #utils:math.vector.dot math.0 0

$execute store result storage utils:math.vector.dot out float 1 run data get storage utils:math.vector.dot u.x $(x)
execute store result score #utils:math.vector.dot math.1 run data get storage utils:math.vector.dot out 100
scoreboard players operation #utils:math.vector.dot math.0 += #utils:math.vector.dot math.1

$execute store result storage utils:math.vector.dot out float 1 run data get storage utils:math.vector.dot u.y $(y)
execute store result score #utils:math.vector.dot math.1 run data get storage utils:math.vector.dot out 100
scoreboard players operation #utils:math.vector.dot math.0 += #utils:math.vector.dot math.1

$execute store result storage utils:math.vector.dot out float 1 run data get storage utils:math.vector.dot u.z $(z)
execute store result score #utils:math.vector.dot math.1 run data get storage utils:math.vector.dot out 100
scoreboard players operation #utils:math.vector.dot math.0 += #utils:math.vector.dot math.1

execute store result storage utils:math.vector.dot out int 1 run scoreboard players get #utils:math.vector.dot math.0
