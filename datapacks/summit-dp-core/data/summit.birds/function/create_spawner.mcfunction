$data modify storage summit:temp bird_spawner.data set value {summit_bird:{model:"$(model)",variant_count:$(variant_count),scare_radius:$(scare_radius),spawn_radius:$(spawn_radius),ambient_sound:"$(ambient_sound)",fly_sound:"$(fly_sound)"}}
$scoreboard players set $max_birds summit.temp $(max_birds)
$scoreboard players set $bird_chance summit.temp $(bird_chance)
execute align xyz positioned ~0.5 ~ ~0.5 summon minecraft:marker run function summit.birds:spawner/setup
