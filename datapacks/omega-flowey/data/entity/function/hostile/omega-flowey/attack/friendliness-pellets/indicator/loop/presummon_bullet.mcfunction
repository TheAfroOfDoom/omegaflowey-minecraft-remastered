execute store result storage params radius int 1 run scoreboard players get @s attack.indicator.radius
execute store result storage params yaw_delta int 1 run scoreboard players get @s attack.d-phi

function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/loop/summon_bullet with storage params
