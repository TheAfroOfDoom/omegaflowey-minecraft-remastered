$data remove storage summit.vehicles:main tracks[{name: "$(name)"}].path[$(i)]
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(name)"}] 
function summit.dev:zz/vehicle/track/show_editor
