## iterate through grid to summon bullets

# summon a bullet at current position
function omegaflowey.entity:soul/soul_0/executor/initialize/presummon

scoreboard players operation @s soul.bullet.position.z += @s soul.bullet.position.dz

execute if score @s soul.bullet.position.z >= @s soul.bullet.position.z.end run scoreboard players operation @s soul.bullet.position.x += @s soul.bullet.position.dx
execute if score @s soul.bullet.position.z >= @s soul.bullet.position.z.end run scoreboard players operation @s soul.bullet.position.z = @s omegaflowey.math.0

# post-logic once we're done iterating
execute if score @s soul.bullet.position.x > @s soul.bullet.position.x.end run function omegaflowey.entity:soul/soul_0/executor/initialize/post_iterate_grid

# iterate again unless we pass the x-bound
execute unless score @s soul.bullet.position.x > @s soul.bullet.position.x.end run function omegaflowey.entity:soul/soul_0/executor/initialize/iterate_grid
