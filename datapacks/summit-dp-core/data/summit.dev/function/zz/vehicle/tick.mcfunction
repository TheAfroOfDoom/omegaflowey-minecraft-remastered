data modify storage summit.vehicles:temp custom_data set from entity @s item.components."minecraft:custom_data"
data modify storage summit.vehicles:temp track_name set from storage summit.vehicles:temp custom_data.track_name
data modify storage summit.vehicles:temp next_node set from storage summit.vehicles:temp custom_data.next_node
function summit.dev:zz/vehicle/tick/check_proximity with storage summit.vehicles:temp next_node.position
execute store result storage summit.vehicles:temp next_node.position.speed double 0.01 run scoreboard players get @s summit.vehicles.speed
function summit.dev:zz/vehicle/tick/go_towards with storage summit.vehicles:temp next_node.position
