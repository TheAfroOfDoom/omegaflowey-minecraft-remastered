execute if entity @s[tag=summit.vehicle.taken] run return 0
tag @s add summit.vehicle.taken
$data modify entity $(parent) data.taken_seats append value {x: $(x), z: $(z), uuid: "$(uuid)"}
data modify entity @s data.passenger set from storage gu:main out
execute on passengers if entity @s[type=interaction] on target run ride @s mount @n[type=item_display]
