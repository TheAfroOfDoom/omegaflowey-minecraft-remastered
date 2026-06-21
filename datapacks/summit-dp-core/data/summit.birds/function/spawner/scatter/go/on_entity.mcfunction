tag @s remove summit.scatter_bird
tag @s add summit.going_bird
item modify entity @s contents {function: "minecraft:set_custom_model_data", flags: {mode: "replace_section", values: [true]}}
function summit.birds:spawner/scatter/go/move with entity @s data.flee_pos
scoreboard players operation @s summit.bird_timer = $time summit.temp
function summit.birds:spawner/scatter/go/sounds with entity @s data
