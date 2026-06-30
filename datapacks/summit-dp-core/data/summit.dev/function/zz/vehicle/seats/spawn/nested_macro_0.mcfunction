ride @n[type=interaction, tag=summit.vehicle.seat] mount @s
function gu:generate
data modify entity @s data.uuid set from storage gu:main out
data modify entity @s data.parent set from storage summit.vehicles:temp parent
$tag @s add $(parent)
