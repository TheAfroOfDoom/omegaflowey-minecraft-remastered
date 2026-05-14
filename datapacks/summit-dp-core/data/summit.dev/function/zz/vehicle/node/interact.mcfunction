advancement revoke @s only summit.dev:zz/vehicle/node/interact
tag @s add summit.interacted
execute as @n[type=marker, tag=summit.vehicles.node] run function summit.dev:zz/vehicle/node/show_editor
tag @s remove summit.interacted
