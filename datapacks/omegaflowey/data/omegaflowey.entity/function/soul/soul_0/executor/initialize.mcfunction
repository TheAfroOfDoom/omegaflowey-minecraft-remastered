# Set scores
scoreboard players set @s omegaflowey.soul.clock.i -1

scoreboard players operation @s omegaflowey.soul.executor.clock.length = #soul-0 omegaflowey.soul.executor.clock.length
scoreboard players operation @s omegaflowey.soul.bullet.position.dx = #soul-0 omegaflowey.soul.bullet.position.dx
scoreboard players operation @s omegaflowey.soul.bullet.position.dz = #soul-0 omegaflowey.soul.bullet.position.dz
scoreboard players operation @s omegaflowey.soul.bullet.position.x = #soul-0 omegaflowey.soul.bullet.position.x
scoreboard players operation @s omegaflowey.soul.bullet.position.x.end = #soul-0 omegaflowey.soul.bullet.position.x.end
scoreboard players operation @s omegaflowey.soul.bullet.position.z = #soul-0 omegaflowey.soul.bullet.position.z
scoreboard players operation @s omegaflowey.soul.bullet.position.z.end = #soul-0 omegaflowey.soul.bullet.position.z.end

scoreboard players reset @s omegaflowey.soul.clock.touched_act_button
scoreboard players set #soul_0.saved omegaflowey.soul.flag 0
scoreboard players set #soul_0.touched omegaflowey.soul.flag 0

# Remove tags
tag @s remove soul-executor-new

# Play music
function omegaflowey.entity:soul/soul_0/executor/play_music
