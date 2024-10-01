## Detects what room the player is in
# Only run more detailed room logic if the player is in the booth's bounds
scoreboard players set @s math.0 0
execute if entity @s[x=-185, dx=90, y=13, dy=72, z=15, dz=86] run scoreboard players set @s math.0 1

# DEBUG
tag @s remove was_inside
tag @s remove was_outside
tag @s[tag=omegaflowey.player] add was_inside
tag @s[tag=!omegaflowey.player] add was_outside

execute if entity @s[scores={math.0=0}] run tag @s remove omegaflowey.player
execute if entity @s[scores={math.0=1}] run tag @s add omegaflowey.player

execute if entity @s[tag=was_inside,scores={math.0=0}] run tellraw @a ["leave"]

execute if entity @s[tag=!omegaflowey.player] run return 0

execute if entity @s[tag=was_outside,scores={math.0=1}] run tellraw @a ["enter"]
