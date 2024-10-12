# Move forward at defined `omegaflowey.attack.speed.z` velocity
execute store result storage utils:move z float 0.01 run scoreboard players get @s omegaflowey.attack.speed.z
function omegaflowey.entity:utils/move_forward with storage utils:move
