scoreboard players operation $id summit.bird_id = @s summit.bird_id
data modify storage summit:temp bird_ambient.sound set from entity @s data.summit_bird.ambient_sound
function summit.birds:bird/ambient_sound/macro with storage summit:temp bird_ambient
