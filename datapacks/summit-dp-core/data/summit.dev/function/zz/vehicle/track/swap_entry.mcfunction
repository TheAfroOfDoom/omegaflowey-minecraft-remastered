$data modify storage summit.vehicles:temp p set from storage summit.vehicles:main tracks[{name: "$(name)"}].path[$(from)]
$data modify storage summit.vehicles:main tracks[{name: "$(name)"}].path[$(from)] set from storage summit.vehicles:main tracks[{name: "$(name)"}].path[$(to)]
$data modify storage summit.vehicles:main tracks[{name: "$(name)"}].path[$(to)] set from storage summit.vehicles:temp p
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(name)"}]             
function summit.dev:zz/vehicle/track/show_editor
