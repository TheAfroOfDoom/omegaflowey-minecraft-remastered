scoreboard players set $found_player summit.temp 0
function summit.birds:spawner/check_player/main with entity @s data.summit_bird
execute if score $found_player summit.temp matches 1 run return run function summit.birds:spawner/found_player
execute unless entity @s[tag=summit.bird_cooldown] if score @s summit.bird_count < @s summit.max_birds run function summit.birds:spawner/attempt_bird
execute store result score $chance summit.temp run random value 1..10
execute if score $chance summit.temp matches 1 run function summit.birds:bird/ambient_sound/main
