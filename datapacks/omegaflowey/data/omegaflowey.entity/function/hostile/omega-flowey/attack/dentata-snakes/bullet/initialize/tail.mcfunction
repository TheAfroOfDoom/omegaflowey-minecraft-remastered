# Round scale to hundredth's place in `math.0`
execute store result score @s math.0 run data get storage attack:dentata-snakes scale 100
execute store result storage attack:dentata-snakes scale_rounded int 1 run scoreboard players get @s math.0

# Begin animation
function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/initialize/tail_macro with storage attack:dentata-snakes
