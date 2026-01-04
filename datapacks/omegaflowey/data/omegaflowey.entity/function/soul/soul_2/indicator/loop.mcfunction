## Split logic between states: `idle`, `aiming`, and `shooting`
scoreboard players add @s soul.clock.i 1

# Ignore logic while `soul.clock.i` is negative
execute if score @s soul.clock.i matches ..-1 run return 0

# Summon next row of bullets every `soul.indicator.rate` ticks
scoreboard players operation @s math.0 = @s soul.clock.i
scoreboard players operation @s math.0 %= @s soul.indicator.rate
execute if score @s math.0 matches 0 run function entity:soul/soul_2/indicator/loop/next_row
