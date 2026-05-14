execute as @e[tag=summit.sittable_display, distance=..0.01, type=item_display] run function summit.interaction:sit/at_height/cleanup_empty_displays
execute unless entity @e[tag=summit.sittable_display, distance=..0.01, type=item_display] summon item_display run function summit.interaction:sit/at_height/nested_execute_0
