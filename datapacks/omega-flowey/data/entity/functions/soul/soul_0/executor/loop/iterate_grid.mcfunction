## iterate through grid to summon bullets

# summon a bullet at current position
function entity:soul/soul_0/executor/loop/presummon

scoreboard players operation @s soul.bullet.position.z += @s soul.bullet.position.dz

execute if score @s soul.bullet.position.z >= @s soul.bullet.position.z.end run scoreboard players operation @s soul.bullet.position.x += @s soul.bullet.position.dx
execute if score @s soul.bullet.position.z >= @s soul.bullet.position.z.end run scoreboard players operation @s soul.bullet.position.z = @s math.0

# iterate again unless we pass the x-bound
execute unless score @s soul.bullet.position.x > @s soul.bullet.position.x.end run function entity:soul/soul_0/executor/loop/iterate_grid
