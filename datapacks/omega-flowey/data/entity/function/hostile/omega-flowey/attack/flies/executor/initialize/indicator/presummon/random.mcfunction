execute store result score @s math.0 run random value 0..1

execute if score @s math.0 matches 0 run function entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/normal
execute if score @s math.0 matches 1 run function entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/flipped
