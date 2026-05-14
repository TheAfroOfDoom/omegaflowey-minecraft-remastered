scoreboard players remove @s summit.battlegrounds.return_timer 1
execute if score @s summit.battlegrounds.return_timer matches 1.. run return 1
scoreboard players reset @s summit.battlegrounds.return_timer
tag @s remove summit.battlegrounds.return
function summit.battlegrounds:player/event/leave
