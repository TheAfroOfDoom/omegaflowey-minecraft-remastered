execute store result score @s omegaflowey.math.0 run random value 0..1

execute if score @s omegaflowey.math.0 matches 0 run function omegaflowey.entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/normal
execute if score @s omegaflowey.math.0 matches 1 run function omegaflowey.entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/flipped