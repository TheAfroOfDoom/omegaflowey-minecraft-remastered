# Summon laser at...
# x-center of arena, horizontal-spanning yaw, flat pitch
data merge storage attack:finger-guns { x: 0.5d, yaw: 90.0f, pitch: 0.0f }
# same z-position as indicator
execute store result storage attack:finger-guns z double 0.01 run data get entity @s Pos[2] 100

function entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/laser/summon with storage attack:finger-guns
