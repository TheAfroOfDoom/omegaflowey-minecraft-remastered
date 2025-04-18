data merge storage omegaflowey:utils.damage { damage: 1, radius: 1.5, source: 'friendliness_pellets.bullet' }
function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage

# Do nothing (except damage) while `stationary`
execute if entity @s[tag=stationary] run return 0

scoreboard players add @s omegaflowey.attack.clock.i 1

# Move forward at defined `omegaflowey.attack.speed.z` velocity
execute store result storage omegaflowey:utils.move z float 0.01 run scoreboard players get #omegaflowey.attack.friendliness-pellets omegaflowey.attack.speed.z
function omegaflowey.entity:utils/move_forward with storage omegaflowey:utils.move

# Terminate after 3 seconds
execute if score @s omegaflowey.attack.clock.i matches 60.. run function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/bullet/terminate
