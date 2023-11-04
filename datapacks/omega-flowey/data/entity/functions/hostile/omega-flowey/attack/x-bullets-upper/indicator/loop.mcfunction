## Runs tick-wise on the `attack-indicator` for the `x-bullets-upper` attack

scoreboard players add @s attack.clock.i 1

# Ignore `attack.rate` logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Pause upper_eye animations
# TODO this needs to NOT be a distance check
execute if score @s attack.clock.i matches 0 as @e[tag=aj.upper_eye.root,sort=nearest,limit=1] run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/pause_eye

# Summon another bullet each tick if `attack.bullets.remaining` is positive
execute if score @s attack.bullets.remaining matches 1.. run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/presummon_bullet

# Attack every `attack.bullets.clock.delay + attack.bullets.total` ticks
execute unless score @s attack.bullets.remaining matches 1.. run scoreboard players add @s attack.bullets.clock.i 1
execute unless score @s attack.bullets.remaining matches 1.. if score @s attack.bullets.clock.i = @s attack.bullets.clock.delay run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/face_player

execute if score @s attack.clock.i = @s attack.clock.length run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/terminate
