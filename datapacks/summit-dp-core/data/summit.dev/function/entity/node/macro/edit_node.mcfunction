$execute as $(uuid) on passengers run data modify entity @s[type=interaction] data.$(type) set value "$(data)"
$execute if score #temp summit.temp matches 69 as $(uuid) on passengers run data modify entity @s[type=text_display] text.text set value "$(data)"
scoreboard players reset #temp summit.temp
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
$execute as $(uuid) on passengers if entity @s[type=interaction] run function summit.dev:entity/node/update_info with entity @s data
$execute if data storage summit:temp {dev:{editNode:{type:"claim"}}} as $(uuid) on passengers if entity @s[type=armor_stand] run waypoint modify @s style set summit_technical:node_claimed
$execute if data storage summit:temp {dev:{editNode:{type:"claim"}}} run item replace entity $(uuid) container.0 with minecraft:poisonous_potato[minecraft:item_model="summit_technical:node_claimed",minecraft:custom_model_data={strings:["$(color)"]}]
$execute if data storage summit:temp {dev:{editNode:{type:"claim"}}} as $(uuid) on passengers run data modify entity @s[type=interaction] data.completed set value false
