scoreboard players add @s attack.clock 1

# Teleport self forward
teleport @s ^ ^ ^0.7

# Terminate after 3 seconds
execute if score @s attack.clock matches 40 run kill @s
# execute if score @s attack.clock matches 40 run function entity:hostile/omega-flowey/attack/x-bullets-upper/bullet/terminate
