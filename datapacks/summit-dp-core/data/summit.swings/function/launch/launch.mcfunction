tag @s remove summit.swing_sitter
execute if score $velocity summit.temp matches 0 run return fail
scoreboard players operation $velocity summit.temp *= $-1 summit.constants
scoreboard players operation $strength player_motion.api.launch = $velocity summit.temp
execute store result score $strength player_motion.api.launch run scoreboard players operation $velocity summit.temp /= $400 summit.constants
function player_motion:api/launch_looking
