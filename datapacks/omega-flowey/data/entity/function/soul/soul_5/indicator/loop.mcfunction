## Split logic between states: `idle`, `aiming`, and `shooting`
scoreboard players add @s soul.clock.i 1

# Ignore logic while `soul.clock.i` is negative
execute if score @s soul.clock.i matches ..-1 run return 0
