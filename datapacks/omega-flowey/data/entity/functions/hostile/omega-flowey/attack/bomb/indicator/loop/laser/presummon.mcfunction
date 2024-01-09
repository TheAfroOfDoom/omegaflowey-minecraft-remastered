# Summon laser at same z-position as indicator
execute store result storage attack:bomb z double 0.01 run data get entity @s Pos[2] 100

function entity:hostile/omega-flowey/attack/bomb/indicator/loop/laser/summon with storage attack:bomb
