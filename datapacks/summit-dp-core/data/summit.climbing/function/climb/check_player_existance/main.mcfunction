execute as @e[type=minecraft:marker, tag=summit.climbing.climber] at @s run function summit.climbing:climb/check_player_existance/check with entity @s data
execute if entity @a[tag=summit.climbing.player] run schedule function summit.climbing:climb/check_player_existance/main 5s replace
