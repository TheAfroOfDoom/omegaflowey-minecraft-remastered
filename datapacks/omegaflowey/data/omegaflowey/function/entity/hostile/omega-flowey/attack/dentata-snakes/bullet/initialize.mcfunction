# Round scale to hundredth's place in `omegaflowey.math.0`
execute store result score @s omegaflowey.math.0 run data get storage omegaflowey:attack.dentata-snakes scale 100
execute store result storage omegaflowey:attack.dentata-snakes scale_rounded int 1 run scoreboard players get @s omegaflowey.math.0

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 0 run function omegaflowey:entity/hostile/omega-flowey/attack/dentata-snakes/bullet/initialize/head
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run function omegaflowey:entity/hostile/omega-flowey/attack/dentata-snakes/bullet/initialize/tail

function omegaflowey:entity/hostile/omega-flowey/attack/dentata-snakes/bullet/initialize/shared with storage omegaflowey:attack.dentata-snakes
