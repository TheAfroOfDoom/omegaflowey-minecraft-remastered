scoreboard players add @s soul.clock.i 1

# Move only for a few ticks
execute if score @s soul.clock.i matches 0..10 run teleport @s ^ ^ ^1
