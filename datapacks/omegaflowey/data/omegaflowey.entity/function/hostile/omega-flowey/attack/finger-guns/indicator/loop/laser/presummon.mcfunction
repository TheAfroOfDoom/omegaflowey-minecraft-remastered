# Summon laser at same z-position as indicator
execute store result storage omegaflowey:attack.finger-guns z double 0.01 run data get entity @s Pos[2] 100

function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/laser/summon with storage omegaflowey:attack.finger-guns
