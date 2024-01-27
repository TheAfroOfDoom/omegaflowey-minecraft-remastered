scoreboard players add @s attack.clock.i 1

# Start animation

execute if score @s attack.clock.i matches 5.. run function entity:hostile/omega-flowey/attack/flies/bullet/terminate
