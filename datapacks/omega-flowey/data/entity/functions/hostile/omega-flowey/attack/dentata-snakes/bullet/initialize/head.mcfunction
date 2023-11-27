# Play summon sounds
playsound omega-flowey:attack.dentata-snakes.spawn hostile @a ~ ~ ~ 5 1
playsound omega-flowey:attack.dentata-snakes.summon hostile @a ~ ~ ~ 5 1

# Add tags
tag @s add attack-bullet-head

# Begin animation
function animated_java:dentata_snake_ball/animations/roll_bite/play

# Common initialization shared between head and tail
function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/initialize with storage attack:dentata-snakes
