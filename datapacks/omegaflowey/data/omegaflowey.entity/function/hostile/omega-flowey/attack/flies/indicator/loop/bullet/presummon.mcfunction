execute store result score @s omegaflowey.math.0 run random value 0..99
# 47% chance the bullet spawns along the top wall
execute if score @s omegaflowey.math.0 matches 0..46 run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/loop/bullet/presummon/along_top
# 49% chance the bullet spawns along the wall across from the indicator
execute if score @s omegaflowey.math.0 matches 47..95 run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/loop/bullet/presummon/along_side
# otherwise (4% chance) the bullet spawns along the bottom wall
execute if score @s omegaflowey.math.0 matches 96..99 run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/loop/bullet/presummon/along_bottom

# y: -3.50
scoreboard players set @s omegaflowey.attack.position.y -350
scoreboard players operation @s omegaflowey.attack.position.y += #omegaflowey.bossfight.vanilla.origin.y omegaflowey.global.flag

execute store result storage omegaflowey:attack.flies x double 0.01 run scoreboard players get @s omegaflowey.attack.position.x
execute store result storage omegaflowey:attack.flies y double 0.01 run scoreboard players get @s omegaflowey.attack.position.y
execute store result storage omegaflowey:attack.flies z double 0.01 run scoreboard players get @s omegaflowey.attack.position.z

# Store `omegaflowey.group.id` for next bullet
execute store result storage omegaflowey:attack.flies group_id int 1 run scoreboard players get @s omegaflowey.group.id

# Summon bullet
function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/loop/bullet/summon with storage omegaflowey:attack.flies
