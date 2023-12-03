scoreboard players set @s math.0 0

$execute store result storage utils:math.vector.dot out float 1 run data get storage utils:math.vector.dot u.x $(x)
execute store result score @s math.1 run data get storage utils:math.vector.dot out 100
scoreboard players operation @s math.0 += @s math.1

$execute store result storage utils:math.vector.dot out float 1 run data get storage utils:math.vector.dot u.y $(y)
execute store result score @s math.1 run data get storage utils:math.vector.dot out 100
scoreboard players operation @s math.0 += @s math.1

$execute store result storage utils:math.vector.dot out float 1 run data get storage utils:math.vector.dot u.z $(z)
execute store result score @s math.1 run data get storage utils:math.vector.dot out 100
scoreboard players operation @s math.0 += @s math.1

execute store result storage utils:math.vector.dot out int 1 run scoreboard players get @s math.0
