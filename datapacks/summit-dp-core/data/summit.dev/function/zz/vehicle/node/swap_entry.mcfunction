tag @s add summit.interacted
$data modify storage summit.vehicles:temp p set from entity $(uuid) data.$(path)[$(from)]
$data modify entity $(uuid) data.$(path)[$(from)] set from entity $(uuid) data.$(path)[$(to)]
$data modify entity $(uuid) data.$(path)[$(to)] set from storage summit.vehicles:temp p
$execute as $(uuid) run function summit.dev:zz/vehicle/node/show_editor
tag @s remove summit.interacted
