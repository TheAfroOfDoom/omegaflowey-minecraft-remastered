## Runs tick-wise on the `attack-indicator` for the `x-bullets-upper` attack

scoreboard players add @s attack.clock.i 1

# Ignore `attack.rate` logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Pause upper_eye animations
# TODO: this has duplicate pause calls unnecessarily...
# shouldnt cause any bugs but is pretty silly and should rethink how we select the corresponding
# AJ upper_eye entity
# TODO this needs to NOT be a distance check
execute if score @s attack.clock.i matches 0 as @e[tag=aj.upper_eye.root,sort=nearest,limit=1] run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/pause_eye

# Attack every `attack.rate` ticks
scoreboard players operation @s attack.rate.i = @s attack.clock.i
scoreboard players operation @s attack.rate.i %= @s attack.rate

execute if score @s attack.rate.i matches 0 run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/face_player

execute if score @s attack.clock.i = @s attack.clock.length run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/terminate
