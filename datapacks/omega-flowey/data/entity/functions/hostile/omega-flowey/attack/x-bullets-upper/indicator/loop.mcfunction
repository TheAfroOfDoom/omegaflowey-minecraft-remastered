## Runs tick-wise on the `attack-indicator` for the `x-bullets-upper` attack

scoreboard players add @s attack.clock 1

# Attack every `attack.rate` ticks
scoreboard players operation @s attack.rate.i = @s attack.clock
scoreboard players operation @s attack.rate.i %= @s attack.rate

execute if score @s attack.rate.i matches 0 run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/face_player

execute if score @s attack.clock = @s attack.length run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/terminate
