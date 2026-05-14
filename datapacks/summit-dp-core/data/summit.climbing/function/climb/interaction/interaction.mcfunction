execute if entity @s[tag=summit.climbing.player] run return 1
tag @s add summit.climbing.player
tag @s add summit.climbing.entering
tag @s add summit.climbing.current_main
execute positioned ~ ~0.03125 ~ summon minecraft:marker run function summit.climbing:climb/interaction/set_climber_data with entity @p[tag=summit.climbing.current_main, distance=..6]
schedule function summit.climbing:climb/check_player_existance/main 5s append
tag @s remove summit.climbing.current_main
