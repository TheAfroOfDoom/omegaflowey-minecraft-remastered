scoreboard players set @s spawn 0
function #summit:api/reset_player
execute in minecraft:overworld if predicate summit:located_in_patched_plateaus run return run tp @s @n[tag=summit.safe_location.patched_plateaus]
execute in minecraft:overworld if predicate summit:located_in_textured_tropics run return run tp @s @n[tag=summit.safe_location.textured_tropics]
execute in minecraft:overworld if predicate summit:located_in_welded_woodlands run return run tp @s @n[tag=summit.safe_location.welded_woodlands]
execute in minecraft:overworld run tp @s @n[tag=summit.safe_location]
