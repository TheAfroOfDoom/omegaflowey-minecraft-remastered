execute summon minecraft:marker run function summit.balloon:give/stamp
$data modify storage summit:temp balloon.model set value "$(model)"
$data modify storage summit:temp balloon.name set value "$(name)"
function summit.balloon:give/macro with storage summit:temp balloon
