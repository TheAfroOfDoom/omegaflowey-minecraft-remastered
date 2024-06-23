## summons a single bullet and increments `attack.bullets.count`

# Summon bullet
$execute positioned ~ ~1 ~ positioned ^ ^ ^$(radius) run function animated_java:friendliness_pellet/summon

# Store `group.id` for next bullet
execute store result storage group id int 1 run scoreboard players get @s group.id

# Store flipped yaw to summon bullet at
execute store result score @s math.0 run data get entity @s Rotation[0] 100
scoreboard players add @s math.0 18000
execute store result storage bullet:new yaw int 1 run scoreboard players get @s math.0

# Initialize bullet
execute as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/friendliness-pellets/bullet/initialize

# Rotate yaw to be ready for next bullet
$teleport @s ~ ~ ~ ~$(yaw_delta) ~

# Increment number of bullets that have been summoned so far
scoreboard players add @s attack.bullets.count 1
