$data modify entity @s data.name set value "$(track_name) - Node #$(node_id)"
$tag @s add summit.vehicles.track.$(track_name)
$tag @s add summit.vehicles.node.$(node_id)
