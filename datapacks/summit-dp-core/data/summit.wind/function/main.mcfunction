schedule function summit.wind:main 5
execute as @a[gamemode=!spectator, tag=summit.wind.affected] at @s run function summit.wind:physics/player/check_plane_collision
