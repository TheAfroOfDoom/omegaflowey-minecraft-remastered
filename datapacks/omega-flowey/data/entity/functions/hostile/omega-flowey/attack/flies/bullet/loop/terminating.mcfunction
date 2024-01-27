scoreboard players add @s attack.clock.i 1

# Play sound
execute if score @s attack.clock.i matches 0 run playsound omega-flowey:attack.flies.swallow hostile @a ~ ~ ~ 5 1 1

# Start animation

execute if score @s attack.clock.i matches 5.. run function entity:hostile/omega-flowey/attack/flies/bullet/terminate
