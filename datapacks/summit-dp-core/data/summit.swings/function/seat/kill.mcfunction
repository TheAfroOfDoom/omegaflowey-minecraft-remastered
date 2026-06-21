tag @s remove summit.swing_sitter
execute on vehicle if entity @s[type=minecraft:item_display, tag=summit.swing_seat] on passengers if entity @s[type=minecraft:interaction] run kill @s
execute on vehicle if entity @s[type=minecraft:item_display, tag=summit.swing_seat] run kill @s
