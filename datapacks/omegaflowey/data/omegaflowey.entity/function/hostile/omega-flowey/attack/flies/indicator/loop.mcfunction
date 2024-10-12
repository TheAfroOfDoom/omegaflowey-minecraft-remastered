execute if entity @s[tag=flies_are_done] run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/loop/flies_are_done
execute if entity @s[tag=flies_are_done] run return 0

# Increment omegaflowey.attack.clock.i before all flies are done (have been summoned + terminated)
scoreboard players add @s omegaflowey.attack.clock.i 1

# Ignore bullet summoning logic while `omegaflowey.attack.clock.i` is negative
execute if score @s omegaflowey.attack.clock.i matches ..-1 run return 0

# Play buzzing sound when we begin summoning bullets
execute if score @s omegaflowey.attack.clock.i matches 0 run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/loop/start_animating

# Summon a bullet every `attack.indicator.rate` ticks
scoreboard players operation @s math.0 = @s omegaflowey.attack.clock.i
scoreboard players operation @s math.0 %= @s attack.indicator.rate
execute if score @s omegaflowey.attack.bullets.remaining matches 1.. if score @s math.0 matches 0 run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/loop/bullet/presummon
