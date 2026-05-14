data modify storage summit.vehicles:temp node set from entity @s data.node
$data modify storage summit.vehicles:main tracks[{name: "$(track_name)"}].nodes[{id: $(node_id)}] set from storage summit.vehicles:temp node
$data modify entity $(uuid) data.node set from storage summit.vehicles:temp node
