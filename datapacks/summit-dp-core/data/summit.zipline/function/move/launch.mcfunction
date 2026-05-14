ride @s dismount
attribute @s minecraft:camera_distance modifier remove summit:zipline
tag @s remove summit.riding_zipline
scoreboard players set $strength player_motion.api.launch 10000
execute rotated ~ ~-35 run function player_motion:api/launch_looking
