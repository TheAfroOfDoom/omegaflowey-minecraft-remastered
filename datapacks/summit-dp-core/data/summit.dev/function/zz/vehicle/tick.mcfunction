data modify storage summit.vehicles:temp custom_data set from entity @s data
data modify storage summit.vehicles:temp track_name set from storage summit.vehicles:temp custom_data.track_name
data modify storage summit.vehicles:temp next_node set from storage summit.vehicles:temp custom_data.next_node
execute if data entity @s data.tick run function summit.dev:zz/vehicle/tick/nested_macro_0 with entity @s data
execute if entity @s[tag=summit.state.effects] run return run function summit.dev:zz/vehicle/tick/effects
execute store result storage summit.vehicles:temp next_node.position.speed double 0.01 run scoreboard players get @s summit.vehicles.speed
function summit.dev:zz/vehicle/tick/check_proximity with storage summit.vehicles:temp next_node.position
