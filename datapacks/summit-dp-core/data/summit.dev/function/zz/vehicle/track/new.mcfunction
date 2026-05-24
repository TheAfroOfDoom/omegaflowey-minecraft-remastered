data remove storage summit.vehicles:temp track
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(track_name)"}]
execute if data storage summit.vehicles:temp track run return run tellraw @s {text: "Specified track already exists!", color: "red"}
$data modify storage summit.vehicles:main tracks append value {name: "$(track_name)", vehicles: [], path: [], loop_behaviour: "loop"}
$tellraw @s {text: "Track '$(track_name)' was created successfully", color: "green"}
