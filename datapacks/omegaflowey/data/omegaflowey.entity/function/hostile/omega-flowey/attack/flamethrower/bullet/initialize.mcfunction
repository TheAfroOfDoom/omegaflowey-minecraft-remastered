tag @s remove attack-bullet-new

function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

tag @s add flamethrower
tag @s add is_falling

# Set scores
scoreboard players set @s omegaflowey.attack.clock.i -1

data merge entity @s { block_state: { Name: "redstone_block" }, transformation:[5.0f,0.0000f,0.0000f,0.0000f,0.0000f,0.6250f,0.0000f,0.0000f,0.0000f,0.0000f,5.0f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f] }
data modify entity @s teleport_duration set value 1

# Initialize physics scores
scoreboard players set @s omegaflowey.attack.velocity 100
