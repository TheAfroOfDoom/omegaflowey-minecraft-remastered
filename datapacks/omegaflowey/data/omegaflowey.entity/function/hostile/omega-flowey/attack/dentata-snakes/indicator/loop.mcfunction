scoreboard players add @s omegaflowey.attack.clock.i 1

scoreboard players operation @s omegaflowey.attack.bullets.remaining = @s omegaflowey.attack.bullets.total
scoreboard players operation @s omegaflowey.attack.bullets.remaining -= @s omegaflowey.attack.bullets.count

# Summon bullet
execute if score @s omegaflowey.attack.bullets.clock.i = @s omegaflowey.attack.bullets.clock.delay if score @s omegaflowey.attack.bullets.remaining matches 1.. run function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/indicator/loop/presummon_bullet

# Increment `omegaflowey.attack.bullets.clock.i`
execute if score @s omegaflowey.attack.bullets.clock.i < @s omegaflowey.attack.bullets.clock.delay run scoreboard players add @s omegaflowey.attack.bullets.clock.i 1

# Terminate
execute if score @s omegaflowey.attack.bullets.remaining matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/indicator/terminate
