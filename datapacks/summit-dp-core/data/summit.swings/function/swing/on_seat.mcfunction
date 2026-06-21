scoreboard players set $found_seat summit.temp 1
scoreboard players set $has_player summit.temp 0
scoreboard players set $player_torque summit.temp 0
execute if entity @s[tag=summit.x_axis] run function summit.swings:swing/x_axis/on_seat
execute if entity @s[tag=summit.z_axis] run function summit.swings:swing/z_axis/on_seat
execute if entity @s[tag=summit.has_player] if score $has_player summit.temp matches 0 run function summit.swings:swing/no_player
