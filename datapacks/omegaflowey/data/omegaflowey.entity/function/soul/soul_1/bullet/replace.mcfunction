execute store result entity @s data.frame int 1 run scoreboard players get @s aj.omegaflowey_move.frame
scoreboard players operation #omegaflowey.soul.1.healer_frame omegaflowey.soul.flag = @s aj.omegaflowey_move.frame

function omegaflowey.entity:soul/soul_1/healer/summon with entity @s data
function omegaflowey.entity:soul/soul_1/bullet/terminate
