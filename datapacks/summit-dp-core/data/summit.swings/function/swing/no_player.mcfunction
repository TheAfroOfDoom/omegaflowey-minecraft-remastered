tag @s remove summit.has_player
scoreboard players operation $id summit.swing_id = @s summit.swing_id
execute as @n[type=minecraft:item_display, tag=summit.swing, predicate=summit.swings:id_match] run function summit.swings:launch/main
