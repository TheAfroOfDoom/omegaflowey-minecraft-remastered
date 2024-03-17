# Summon bullet
$execute positioned $(x) $(y) $(z) rotated $(bullet_yaw) $(bullet_pitch) run function animated_java:homing_vine/summon

# Initialize bullet
execute as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/homing-vines/bullet/initialize

# Increment bullets summoned so far
scoreboard players add @s attack.bullets.count 1
