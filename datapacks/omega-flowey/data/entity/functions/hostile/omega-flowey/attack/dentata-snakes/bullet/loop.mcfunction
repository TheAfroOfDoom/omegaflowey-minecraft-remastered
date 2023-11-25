scoreboard players add @s attack.clock.i 1

data merge storage utils:damage { damage: 2, radius: 1.5 }
function entity:utils/damage with storage utils:damage

# Bounce if hit edge of arena
execute unless entity @s[x=-21,dx=42,z=-3,dz=21] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/loop/bounce

# Move forward at defined `attack.speed.z` velocity
execute store result storage utils:move z float 0.01 run scoreboard players get #attack-dentata-snakes attack.speed.z
function entity:utils/move_forward with storage utils:move

# Allow bullet to escape arena after X seconds
execute if score @s attack.clock.i matches 100 run tag @s add can-escape-arena

# Terminate after X seconds
execute if score @s attack.clock.i matches 200.. run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/terminate
