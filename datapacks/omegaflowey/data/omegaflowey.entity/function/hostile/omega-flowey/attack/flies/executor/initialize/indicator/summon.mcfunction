# Summon indicator
$execute positioned $(x) $(y) $(z) rotated $(yaw) $(pitch) run function animated_java:omegaflowey_venus_fly_trap/summon { args: {} }

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/initialize
