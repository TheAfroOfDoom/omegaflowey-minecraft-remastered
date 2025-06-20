execute store result storage omegaflowey:attack.flamethrower bullet_vel_x float 0.01 run scoreboard players get @s omegaflowey.attack.velocity.x
execute store result storage omegaflowey:attack.flamethrower bullet_vel_y float 0.01 run scoreboard players get @s omegaflowey.attack.velocity.y
execute store result storage omegaflowey:attack.flamethrower bullet_vel_z float 0.01 run scoreboard players get @s omegaflowey.attack.velocity.z

function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/bullet/loop/move/macro with storage omegaflowey:attack.flamethrower
