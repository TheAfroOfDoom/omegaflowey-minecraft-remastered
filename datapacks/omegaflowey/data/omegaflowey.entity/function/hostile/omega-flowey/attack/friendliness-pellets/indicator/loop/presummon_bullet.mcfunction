execute store result storage params radius int 1 run scoreboard players get @s attack.indicator.radius
execute store result storage params yaw_delta int 1 run scoreboard players get @s attack.d-phi

# Store flipped yaw to summon bullet at
execute store result score @s math.0 run data get entity @s Rotation[0] 100
scoreboard players add @s math.0 18000
execute store result storage params bullet_yaw int 0.01 run scoreboard players get @s math.0

function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/loop/summon_bullet with storage params
