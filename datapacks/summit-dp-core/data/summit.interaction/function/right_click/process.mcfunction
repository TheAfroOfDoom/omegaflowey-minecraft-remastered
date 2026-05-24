execute store result score #check_gametime summit.temp run data get entity @s interaction.timestamp
execute unless score #check_gametime summit.temp = #current_gametime summit.temp run return run data remove entity @s interaction
execute on target unless entity @s[tag=summit.interaction.player] run return fail
execute if data entity @s data.summit_interactable.special run function summit.interaction:right_click/process/special
execute if data entity @s data.summit_interactable.on_right_click run function summit.interaction:right_click/process/try_command
data remove entity @s interaction
