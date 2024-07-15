## Split logic between states: `idle`, `aiming`, and `shooting`
scoreboard players add @s soul.clock.i 1

# Ignore logic while `soul.clock.i` is negative
execute if score @s soul.clock.i matches ..-1 run return 0

# state-loop is: idle -> aiming -> shooting
execute if entity @s[tag=soul_5.idle] run function entity:soul/soul_5/indicator/loop/idle
execute if entity @s[tag=soul_5.aiming] run function entity:soul/soul_5/indicator/loop/aiming
execute if entity @s[tag=soul_5.shooting] run function entity:soul/soul_5/indicator/loop/shooting
