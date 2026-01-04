# randomize animation idx
execute store result entity @s data.frame int 1 run random value 0..11
scoreboard players operation #omegaflowey.soul.2.healer_frame omegaflowey.soul.flag = @s aj.omegaflowey_move.frame

# randomize yaw + pitch
execute store result entity @s data.yaw int 10 run random value 0..35
execute store result entity @s data.pitch int 2 run random value -5..5

function omegaflowey.entity:soul/soul_2/healer/summon with entity @s data
function omegaflowey.entity:soul/soul_2/star/terminate
