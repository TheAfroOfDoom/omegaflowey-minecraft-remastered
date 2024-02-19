# Set scores
scoreboard players set @s soul.clock.i -1

scoreboard players operation @s soul.executor.clock.length = #soul-0 soul.executor.clock.length
scoreboard players operation @s soul.bullet.position.dx = #soul-0 soul.bullet.position.dx
scoreboard players operation @s soul.bullet.position.dz = #soul-0 soul.bullet.position.dz
scoreboard players operation @s soul.bullet.position.x = #soul-0 soul.bullet.position.x
scoreboard players operation @s soul.bullet.position.x.end = #soul-0 soul.bullet.position.x.end
scoreboard players operation @s soul.bullet.position.z = #soul-0 soul.bullet.position.z
scoreboard players operation @s soul.bullet.position.z.end = #soul-0 soul.bullet.position.z.end

# Remove tags
tag @s remove soul-executor-new

# Play music
# TODO: this shouldn't be here, probably? this should only be played by the boss-fight director
playsound omega-flowey:music.soul.0 record @a ~ ~ ~ 10 1
