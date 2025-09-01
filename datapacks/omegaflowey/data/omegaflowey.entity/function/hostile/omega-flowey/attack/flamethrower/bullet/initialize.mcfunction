tag @s remove attack-bullet-new

function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

tag @s add flamethrower
tag @s add is_falling

execute store result entity @s Rotation[0] float 0.01 run data get storage omegaflowey:attack.flamethrower bullet_yaw

# Set scores
scoreboard players set @s omegaflowey.attack.clock.i -1

data merge entity @s { block_state: { Name: "redstone_block" }, transformation:[5.0f,0.0000f,0.0000f,0.0000f,0.0000f,0.6250f,0.0000f,0.0000f,0.0000f,0.0000f,5.0f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f] }
data modify entity @s teleport_duration set value 1

# Initialize physics scores
scoreboard players set @s omegaflowey.attack.velocity 100
