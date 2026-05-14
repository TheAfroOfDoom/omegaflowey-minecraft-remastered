advancement revoke @s only summit.interaction:left_click
execute store result score #current_gametime summit.temp run time query gametime
tag @s add summit.interaction.player
execute as @e[tag=summit.interactable, type=interaction, distance=..8] if data entity @s attack run function summit.interaction:left_click/process
tag @s remove summit.interaction.player
