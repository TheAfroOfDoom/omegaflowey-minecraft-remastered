tag @s add summit.empty_zipline
scoreboard players operation $strength player_motion.api.launch = @s summit.zipline_speed
scoreboard players operation $strength player_motion.api.launch *= $15 summit.constants
execute if score $strength player_motion.api.launch matches 13000.. run scoreboard players set $strength player_motion.api.launch 13000
execute at @s rotated as @s as @p[tag=summit.riding_zipline, predicate=!summit.zipline:vehicle, distance=..10] run function summit.zipline:move/dismount/on_player
