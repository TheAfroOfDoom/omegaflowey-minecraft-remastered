# Set scores
scoreboard players set @s omegaflowey.soul.clock.i -1

scoreboard players operation @s omegaflowey.soul.executor.clock.length = #omegaflowey.soul.0 omegaflowey.soul.executor.clock.length
scoreboard players operation @s omegaflowey.soul.bullet.position.dx = #omegaflowey.soul.0 omegaflowey.soul.bullet.position.dx
scoreboard players operation @s omegaflowey.soul.bullet.position.dz = #omegaflowey.soul.0 omegaflowey.soul.bullet.position.dz
scoreboard players operation @s omegaflowey.soul.bullet.position.x = #omegaflowey.soul.0 omegaflowey.soul.bullet.position.x
scoreboard players operation @s omegaflowey.soul.bullet.position.x.end = #omegaflowey.soul.0 omegaflowey.soul.bullet.position.x.end
scoreboard players operation @s omegaflowey.soul.bullet.position.y = #omegaflowey.soul.0 omegaflowey.soul.bullet.position.y
scoreboard players operation @s omegaflowey.soul.bullet.position.z = #omegaflowey.soul.0 omegaflowey.soul.bullet.position.z
scoreboard players operation @s omegaflowey.soul.bullet.position.z.end = #omegaflowey.soul.0 omegaflowey.soul.bullet.position.z.end

scoreboard players reset @s omegaflowey.soul.clock.touched_act_button
scoreboard players set #omegaflowey.soul.0.saved omegaflowey.soul.flag 0
scoreboard players set #omegaflowey.soul.0.touched omegaflowey.soul.flag 0

# Remove tags
tag @s remove soul-executor-new

# Play music
function omegaflowey.entity:soul/soul_0/executor/play_music
