execute on target run tag @s add summit.swing_sitter
execute on vehicle run ride @p[tag=summit.swing_sitter] mount @s
execute on vehicle run tag @s add summit.has_player
execute on vehicle run scoreboard players operation $id summit.swing_id = @s summit.swing_id
tag @n[type=minecraft:item_display, tag=summit.swing, predicate=summit.swings:id_match] add summit.ticking_swing
