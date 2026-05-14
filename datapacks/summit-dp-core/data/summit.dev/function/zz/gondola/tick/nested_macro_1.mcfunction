$execute facing entity @n[type=marker, tag=summit.gondola.marker, scores={summit.temp=$(next_id)..}] eyes run tp @s ^ ^ ^0.2 ~ 0
$execute if entity @n[type=marker, tag=summit.gondola.marker, scores={summit.temp=$(next_id)..}, distance=..0.2] run function summit.dev:zz/gondola/tick/nested_execute_0
$execute at @s as @e[limit=4, type=item_display, tag=summit.gondola.seat, scores={summit.temp=$(id)..}] run function summit.dev:zz/gondola/tick/tp
