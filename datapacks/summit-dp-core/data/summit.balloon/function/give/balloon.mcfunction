execute store result storage summit:temp balloon.stamp int 1 run scoreboard players add $balloon_stamp summit.temp 1
$data modify storage summit:temp balloon.model set value "$(model)"
$data modify storage summit:temp balloon.name set value "$(name)"
function summit.balloon:give/macro with storage summit:temp balloon
