## Split logic between states: `idle`, `aiming`, and `shooting`
scoreboard players add @s omegaflowey.soul.clock.i 1

# Ignore logic while `omegaflowey.soul.clock.i` is negative
execute if score @s omegaflowey.soul.clock.i matches ..-1 run return 0

# state-loop is: idle -> aiming -> shooting -> aiming -> shooting -> aiming -> ...
execute if entity @s[tag=soul_5.idle] run function omegaflowey.entity:soul/soul_5/indicator/loop/idle
execute if entity @s[tag=soul_5.aiming] run function omegaflowey.entity:soul/soul_5/indicator/loop/aiming with storage omegaflowey:bossfight
execute if entity @s[tag=soul_5.shooting] run function omegaflowey.entity:soul/soul_5/indicator/loop/shooting

# Shaking animation
execute if entity @s[tag=shaking] run function omegaflowey.entity:soul/soul_5/indicator/loop/shaking
