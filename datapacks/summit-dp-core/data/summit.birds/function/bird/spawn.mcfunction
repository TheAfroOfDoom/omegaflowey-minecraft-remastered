$execute store result storage summit:temp bird_spawner.variant int 1 run random value 0..$(variant_count)
execute store result score $rotation summit.temp run random value 1..2
execute if score $rotation summit.temp matches 1 run data modify storage summit:temp bird_spawner.rotation set value [0.0f, 1.0f, 0.0f, 0.0f]
execute if score $rotation summit.temp matches 2 run data modify storage summit:temp bird_spawner.rotation set value [0.0f, 0.0f, 0.0f, 1.0f]
$execute positioned ~$(x_offset) ~15 ~$(y_offset) summon minecraft:item_display run function summit.birds:bird/setup_bird with storage summit:temp bird_spawner
