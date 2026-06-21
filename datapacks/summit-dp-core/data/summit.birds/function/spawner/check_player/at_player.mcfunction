tag @s add summit.player_in_range
summon minecraft:marker ~ ~ ~ {UUID: [I; -747377540, -776254598, -1937506138, -2110065502]}
execute unless score @s summit.bird_count matches 0 run function summit.birds:spawner/scatter/main
kill d373ec7c-d1bb-4b7a-8c84-00a6823af4a2
