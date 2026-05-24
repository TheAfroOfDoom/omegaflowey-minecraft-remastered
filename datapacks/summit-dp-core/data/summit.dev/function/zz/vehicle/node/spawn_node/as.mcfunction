ride @s mount @n[type=item_display, tag=summit.vehicles.node]
ride @n[type=interaction, tag=summit.vehicles.node] mount @n[type=item_display, tag=summit.vehicles.node]
data modify entity @s data.node set from storage summit.vehicles:temp node
data modify entity @s data.node_id set from storage summit.vehicles:temp node.id
data modify entity @s data.track_name set from storage summit.vehicles:temp track.name
function gu:generate
data modify entity @s data.uuid set from storage gu:main out
function summit.dev:zz/vehicle/node/spawn_node/as/name with entity @s data
function summit.dev:zz/vehicle/node/spawn_node/as/position with entity @s data.node.position
