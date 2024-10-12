## Randomize the position of the next 3 bullets at a radius around a random player every 4 ticks

# Ignore logic while `soul.clock.i` is negative
execute if score @s soul.clock.i matches ..-1 run return 0

scoreboard players operation @s omegaflowey.math.0 = @s soul.clock.i
scoreboard players operation @s omegaflowey.math.0 %= #4 omegaflowey.math.const
execute if score @s omegaflowey.math.0 matches 0 at @r[tag=omegaflowey.player.fighting_flowey] run function omegaflowey.entity:soul/soul_5/indicator/loop/aiming/next_crosshair
