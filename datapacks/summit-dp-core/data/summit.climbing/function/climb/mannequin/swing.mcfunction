scoreboard players add @s summit.climbing.swing_state 1
scoreboard players operation @s summit.climbing.swing_state %= 2 summit.climbing.int
execute if score @s summit.climbing.swing_state matches 0 run return run swing @s mainhand
execute if score @s summit.climbing.swing_state matches 1 run return run swing @s offhand
