$data modify storage summit.vehicles:temp $(path) set value $(value)
$data modify storage summit.vehicles:main tracks[{name: "$(name)"}] set from storage summit.vehicles:temp track        
function summit.dev:zz/vehicle/track/show_editor
