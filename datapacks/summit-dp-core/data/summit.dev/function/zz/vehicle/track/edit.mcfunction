data remove storage summit.vehicles:temp track
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(track_name)"}]
execute unless data storage summit.vehicles:temp track run return run tellraw @s {text: "Specified track does not exist!", color: "red"}
data modify storage summit.vehicles:temp name set from storage summit.vehicles:temp track.name
function summit.dev:zz/vehicle/track/show_editor
