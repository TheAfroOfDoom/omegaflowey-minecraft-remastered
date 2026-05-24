tag @s add summit.interacted
$data remove entity $(uuid) data.$(path)[$(i)]
$execute as $(uuid) run function summit.dev:zz/vehicle/node/show_editor
tag @s remove summit.interacted
