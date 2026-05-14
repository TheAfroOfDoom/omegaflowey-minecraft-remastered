advancement revoke @s only summit.interaction:right_click
execute store result score #current_gametime summit.temp run time query gametime
tag @s add summit.interaction.player
execute as @e[tag=summit.interactable, type=interaction, distance=..8] if data entity @s interaction run function summit.interaction:right_click/process
tag @s remove summit.interaction.player
