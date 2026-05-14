execute if score $time_left summit.battlegrounds matches -1 run function summit.battlegrounds:battleground/set_timer
execute if score $time_left summit.battlegrounds matches 1.. run scoreboard players remove $time_left summit.battlegrounds 1
execute if score $time_left summit.battlegrounds matches 0 run function summit.battlegrounds:battleground/session/end
