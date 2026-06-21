execute store result score $max_birds summit.temp run data get entity @s data.summit_bird.max_birds
execute unless entity @s[tag=summit.bird_cooldown] if score @s summit.bird_count < $max_birds summit.temp run function summit.birds:spawner/attempt_bird
function summit.birds:bird/ambient_sound/main
