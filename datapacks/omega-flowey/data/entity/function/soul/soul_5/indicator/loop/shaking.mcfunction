scoreboard players add @s soul.clock.animation 1

# Shitty + hacky way to do an animation but oh well
execute if score @s soul.clock.animation matches 0 run teleport @s ~0.25 ~ ~-0.25
execute if score @s soul.clock.animation matches 1 run teleport @s ~ ~ ~0.5
execute if score @s soul.clock.animation matches 2 run teleport @s ~-0.375 ~ ~-0.5
execute if score @s soul.clock.animation matches 3 run teleport @s ~0.25 ~ ~0.375
execute if score @s soul.clock.animation matches 4 run teleport @s ~-0.125 ~ ~-0.125

execute if score @s soul.clock.animation matches 4.. run scoreboard players set @s soul.clock.animation -1
