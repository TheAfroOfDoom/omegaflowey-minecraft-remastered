# Play summon sounds
playsound omega-flowey:attack.dentata-snakes.spawn hostile @a ~ ~ ~ 5 1
playsound omega-flowey:attack.dentata-snakes.summon hostile @a ~ ~ ~ 5 1

# Add tags
tag @s add attack-bullet-head

# Common initialization shared between head and tail
function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/initialize with storage attack:dentata-snakes
