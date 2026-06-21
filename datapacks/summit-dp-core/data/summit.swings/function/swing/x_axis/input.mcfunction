execute if predicate summit.swings:jump run return run ride @s dismount
scoreboard players set $has_player summit.temp 1
execute if entity @s[y_rotation=0..180] if predicate summit.swings:forward run return run scoreboard players operation $player_torque summit.temp = $forward_player_torque summit.constants
execute if entity @s[y_rotation=-180..0] if predicate summit.swings:forward run return run scoreboard players operation $player_torque summit.temp = $backward_player_torque summit.constants
execute if entity @s[y_rotation=0..180] if predicate summit.swings:backward run return run scoreboard players operation $player_torque summit.temp = $backward_player_torque summit.constants
execute if entity @s[y_rotation=-180..0] if predicate summit.swings:backward run return run scoreboard players operation $player_torque summit.temp = $forward_player_torque summit.constants
