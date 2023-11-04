## Runs tick-wise on the `attack-indicator` for the `x-bullets-lower` attack

scoreboard players add @s attack.clock.i 1

# Ignore bullet summoning logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Pause lower_eye animations
# TODO this needs to NOT be a distance check
execute if score @s attack.clock.i matches 0 as @e[tag=aj.lower_eye.root,sort=nearest,limit=1] run function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/loop/pause_eye

# Summon another bullet each tick if `attack.bullets.remaining` is positive
execute if score @s attack.bullets.remaining matches 1.. run function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/loop/presummon_bullet

# Attack every `attack.bullets.clock.delay + attack.bullets.total` ticks
execute unless score @s attack.bullets.remaining matches 1.. run scoreboard players add @s attack.bullets.clock.i 1
execute unless score @s attack.bullets.remaining matches 1.. if score @s attack.bullets.clock.i = @s attack.bullets.clock.delay run function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/loop/face_player

# Apply colorful variant right after finished summoning bullets (also at beginning of attack)
# TODO this needs to NOT be a distance check
execute if score @s attack.bullets.clock.i matches 0 as @e[tag=aj.lower_eye.root,sort=nearest,limit=1] run function animated_java:lower_eye/apply_variant/colorful

execute if score @s attack.clock.i = @s attack.clock.length run function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/terminate
