scoreboard players add @s attack.clock.i 1

scoreboard players operation @s attack.bullets.remaining = @s attack.bullets.total
scoreboard players operation @s attack.bullets.remaining -= @s attack.bullets.count

# Summon bullet
execute if score @s attack.bullets.clock.i = @s attack.bullets.clock.delay if score @s attack.bullets.remaining matches 1.. run function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/indicator/loop/presummon_bullet

# Increment `attack.bullets.clock.i`
execute if score @s attack.bullets.clock.i < @s attack.bullets.clock.delay run scoreboard players add @s attack.bullets.clock.i 1

# Terminate
execute if score @s attack.bullets.remaining matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/indicator/terminate
