scoreboard players operation $id summit.bird_id = @s summit.bird_id
data modify storage summit:temp bird_ambient.sound set from entity @s data.summit_bird.ambient_sound
execute store result storage summit:temp bird_ambient.sound_chance double 0.01 run data get entity @s data.summit_bird.ambient_sound_chance
execute store result storage summit:temp bird_ambient.limit int 1 run data get entity @s data.summit_bird.max_birds
function summit.birds:bird/ambient_sound/macro with storage summit:temp bird_ambient
