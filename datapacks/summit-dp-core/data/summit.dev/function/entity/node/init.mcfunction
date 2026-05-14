$item replace entity @s container.0 with minecraft:poisonous_potato[minecraft:item_model="summit_technical:node",minecraft:custom_model_data={strings:["$(color)"]}]
execute on passengers run data modify entity @s[type=interaction] data set from storage summit:temp dev.newNode
execute on passengers run data modify entity @s[type=text_display] text.text set from storage summit:temp dev.newNode.name
scoreboard players operation @s summit.dev.nodeID = #nodeCounter summit.temp
function gu:generate
data modify storage summit:temp dev.newNode.uuid set from storage gu:main out
function summit.dev:entity/node/macro/store_uuid with storage summit:temp dev.newNode
execute on passengers if entity @s[type=interaction] run function summit.dev:entity/node/update_info with entity @s data
execute on passengers if entity @s[type=armor_stand] run function summit.dev:entity/node/set_waypoint
