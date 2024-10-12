scoreboard players add @s omegaflowey.attack.clock.i 1

# Move forward at defined `omegaflowey.attack.speed.z` velocity
execute store result storage utils:move z float 0.01 run scoreboard players get #attack-x-bullets-upper omegaflowey.attack.speed.z
function omegaflowey.entity:utils/move_forward with storage utils:move

data merge storage utils:damage {damage: 2, radius: 1.5}
execute if entity @s[tag=!cant-damage] run function omegaflowey.entity:utils/damage with storage utils:damage

# Terminate after 2 seconds
execute if score @s omegaflowey.attack.clock.i matches 40.. run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/bullet/terminate
