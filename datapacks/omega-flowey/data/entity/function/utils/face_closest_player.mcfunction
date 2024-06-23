execute store result storage face_closest_player x float 0.01 run scoreboard players get @s attack.position.x
execute store result storage face_closest_player y float 0.01 run scoreboard players get @s attack.position.y
execute store result storage face_closest_player z float 0.01 run scoreboard players get @s attack.position.z

function entity:utils/face_closest_player_macro with storage face_closest_player
