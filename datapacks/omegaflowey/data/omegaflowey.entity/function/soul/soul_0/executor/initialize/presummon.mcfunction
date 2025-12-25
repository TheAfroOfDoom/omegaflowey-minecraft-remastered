execute store result storage omegaflowey:soul.0 x float 0.01 run scoreboard players get @s omegaflowey.soul.bullet.position.x
execute store result storage omegaflowey:soul.0 y float 0.0001 run scoreboard players get @s omegaflowey.soul.bullet.position.y
execute store result storage omegaflowey:soul.0 z float 0.01 run scoreboard players get @s omegaflowey.soul.bullet.position.z

function omegaflowey.entity:soul/soul_0/bullet/summon with storage omegaflowey:soul.0
