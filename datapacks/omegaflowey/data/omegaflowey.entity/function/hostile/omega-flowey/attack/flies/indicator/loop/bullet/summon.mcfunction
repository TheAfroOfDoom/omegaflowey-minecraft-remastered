# Summon bullet
$execute positioned $(x) $(y) $(z) run function animated_java:omegaflowey_housefly/summon { args: {} }

# Initialize bullet
execute as @e[tag=attack-bullet-new] at @s run function omegaflowey.entity:hostile/omega-flowey/attack/flies/bullet/initialize

# Decrement bullets remaining to summon
scoreboard players remove @s omegaflowey.attack.bullets.remaining 1
