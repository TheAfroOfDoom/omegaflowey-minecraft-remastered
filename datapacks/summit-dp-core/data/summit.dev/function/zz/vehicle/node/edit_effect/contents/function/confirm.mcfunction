tag @s add summit.interacted
$data modify entity $(uuid) data.$(path) set value {type: function, function: "$(function)"}
$execute as $(uuid) run function summit.dev:zz/vehicle/node/show_editor
tag @s remove summit.interacted
