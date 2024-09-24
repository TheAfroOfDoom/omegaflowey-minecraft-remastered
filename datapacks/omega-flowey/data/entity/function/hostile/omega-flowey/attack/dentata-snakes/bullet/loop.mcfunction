scoreboard players add @s attack.clock.i 1

execute store result storage utils:damage radius float 0.0001 run scoreboard players get @s attack.bullets.radius
data merge storage utils:damage { damage: 2.5 }
function entity:utils/damage with storage utils:damage

# Bounce if hit edge of arena
execute unless entity @s[x=-156.5,dx=-42,y=50,dy=40,z=53,dz=-21] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/loop/maybe_bounce

# Move forward at defined `attack.speed.z` velocity
execute store result storage utils:move z float 0.01 run scoreboard players get @s attack.speed.z
function entity:utils/move_forward with storage utils:move

# TODO(42): validate/determine a value for how long the dentata-snakes can bounce
# Allow bullet to escape arena after X seconds
execute if score @s attack.clock.i matches 100 run tag @s add can-escape-arena

# TODO(42): validate/determine a value for how long until the dentata-snakes terminate
# Terminate after X seconds
execute if score @s attack.clock.i matches 200.. run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/terminate
