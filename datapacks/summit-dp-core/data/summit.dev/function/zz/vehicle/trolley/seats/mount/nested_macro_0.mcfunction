execute if entity @s[tag=summit.trolley.taken] run return 0
tag @s add summit.trolley.taken
$data modify entity $(parent) data.taken_seats append value {x: $(x), z: $(z), uuid: "$(uuid)"}
execute on passengers if entity @s[type=interaction] on target run ride @s mount @n[type=item_display]
