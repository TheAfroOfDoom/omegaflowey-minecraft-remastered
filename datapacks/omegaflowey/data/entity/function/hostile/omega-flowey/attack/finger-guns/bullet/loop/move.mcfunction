# Move forward at defined `attack.speed.z` velocity
execute store result storage utils:move z double 0.01 run scoreboard players get @s attack.speed.z
function entity:utils/move_forward with storage utils:move
