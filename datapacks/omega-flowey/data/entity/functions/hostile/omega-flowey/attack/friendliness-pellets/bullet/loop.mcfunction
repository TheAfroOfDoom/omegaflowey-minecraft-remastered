# Do nothing while `inactive`
execute if entity @s[tag=inactive] run return 0

scoreboard players add @s attack.clock.i 1

# Move forward at defined `attack.speed.z` velocity
execute store result storage utils:move z float 0.01 run scoreboard players get #attack-friendliness-pellets attack.speed.z
function entity:utils/move_forward with storage utils:move

data merge storage utils:damage {damage: 2, radius: 1.5}
function entity:utils/damage with storage utils:damage

# Terminate after 3 seconds
execute if score @s attack.clock.i matches 60.. run function entity:hostile/omega-flowey/attack/friendliness-pellets/bullet/terminate
