data modify storage summit.climbing:master cmd set from entity @s data.summit_interactable.on_right_click
function summit.climbing:interaction/execute_command with storage summit.climbing:master
data remove entity @s interaction
