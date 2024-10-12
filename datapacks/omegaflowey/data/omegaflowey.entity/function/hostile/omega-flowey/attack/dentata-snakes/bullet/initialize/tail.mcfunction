# Round scale to hundredth's place in `omegaflowey.math.0`
execute store result score @s omegaflowey.math.0 run data get storage attack:dentata-snakes scale 100
execute store result storage attack:dentata-snakes scale_rounded int 1 run scoreboard players get @s omegaflowey.math.0

# Begin animation
function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/bullet/initialize/tail_macro with storage attack:dentata-snakes
