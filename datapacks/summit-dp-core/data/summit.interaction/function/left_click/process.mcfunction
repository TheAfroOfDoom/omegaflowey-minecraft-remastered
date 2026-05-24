execute store result score #check_gametime summit.temp run data get entity @s attack.timestamp
execute unless score #check_gametime summit.temp = #current_gametime summit.temp run return run data remove entity @s attack
execute on attacker unless entity @s[tag=summit.interaction.player] run return fail
execute if data entity @s data.summit_interactable.special run function summit.interaction:left_click/process/special
execute if data entity @s data.summit_interactable.on_left_click run function summit.interaction:left_click/process/try_command
data remove entity @s attack
