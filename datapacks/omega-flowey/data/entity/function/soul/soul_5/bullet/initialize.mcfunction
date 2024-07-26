# Face crosshair
$teleport @s ~ ~ ~ facing entity $(next_crosshair_uuid)
execute at @s run teleport @s ~ ~ ~ ~ 0

# Remove tags
tag @s remove soul-bullet-new
