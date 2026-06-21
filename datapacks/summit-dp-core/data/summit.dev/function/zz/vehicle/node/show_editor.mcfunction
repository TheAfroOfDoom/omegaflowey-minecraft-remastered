data modify storage summit.vehicles:temp dialog set value {type: "minecraft:multi_action", title: "", body: {type: "minecraft:plain_message", contents: [""], width: 350}, inputs: [], actions: [{label: "Close"}]}
data modify storage summit.vehicles:temp node set from entity @s data.node
data modify storage summit.vehicles:temp uuid set from entity @s data.uuid
function summit.dev:zz/vehicle/node/show_editor/body with entity @s data
data modify storage summit.vehicles:temp dialog.body.contents append value [{text: "-----", bold: true, color: "gray"}, "\n\n", "Triggers\n\n"]
data modify storage summit.vehicles:temp dialog.body.contents append value [{text: "-- Enter --\n", color: "white"}]
execute store result score #len summit.temp run data get storage summit.vehicles:temp node.triggers.enter
execute store result score #last summit.temp run data get storage summit.vehicles:temp node.triggers.enter
scoreboard players remove #last summit.temp 1
scoreboard players set #i summit.temp -1
execute store result storage summit.vehicles:temp ip int 1 run scoreboard players get #i summit.temp
scoreboard players add #i summit.temp 1
execute store result storage summit.vehicles:temp i int 1 run scoreboard players get #i summit.temp
scoreboard players operation #in summit.temp = #i summit.temp
execute store result storage summit.vehicles:temp in int 1 run scoreboard players add #in summit.temp 1
data modify storage summit.vehicles:temp value set from storage summit.vehicles:temp node.triggers.enter[0]
execute if score #len summit.temp matches 1.. run function summit.dev:zz/vehicle/node/show_editor/enters with storage summit.vehicles:temp {}
function summit.dev:zz/vehicle/node/show_editor/nested_macro_0 with storage summit.vehicles:temp {}
data modify storage summit.vehicles:temp dialog.body.contents append value [{text: "\n-- Exit --\n", color: "white"}]
execute store result score #len summit.temp run data get storage summit.vehicles:temp node.triggers.exit
execute store result score #last summit.temp run data get storage summit.vehicles:temp node.triggers.exit
scoreboard players remove #last summit.temp 1
scoreboard players set #i summit.temp -1
execute store result storage summit.vehicles:temp ip int 1 run scoreboard players get #i summit.temp
scoreboard players add #i summit.temp 1
execute store result storage summit.vehicles:temp i int 1 run scoreboard players get #i summit.temp
scoreboard players operation #in summit.temp = #i summit.temp
execute store result storage summit.vehicles:temp in int 1 run scoreboard players add #in summit.temp 1
data modify storage summit.vehicles:temp value set from storage summit.vehicles:temp node.triggers.exit[0]
execute if score #len summit.temp matches 1.. run function summit.dev:zz/vehicle/node/show_editor/exits with storage summit.vehicles:temp {}
function summit.dev:zz/vehicle/node/show_editor/nested_macro_1 with storage summit.vehicles:temp {}
data modify storage summit.vehicles:temp dialog.body.contents append value [{text: "\n-----", bold: true, color: "gray"}, "\n\n", "Effects\n\n"]
execute store result score #len summit.temp run data get storage summit.vehicles:temp node.effects
execute store result score #last summit.temp run data get storage summit.vehicles:temp node.effects
scoreboard players remove #last summit.temp 1
scoreboard players set #i summit.temp -1
execute store result storage summit.vehicles:temp ip int 1 run scoreboard players get #i summit.temp
scoreboard players add #i summit.temp 1
execute store result storage summit.vehicles:temp i int 1 run scoreboard players get #i summit.temp
scoreboard players operation #in summit.temp = #i summit.temp
execute store result storage summit.vehicles:temp in int 1 run scoreboard players add #in summit.temp 1
data modify storage summit.vehicles:temp value set from storage summit.vehicles:temp node.effects[0]
execute if score #len summit.temp matches 1.. run function summit.dev:zz/vehicle/node/show_editor/effects with storage summit.vehicles:temp {}
function summit.dev:zz/vehicle/node/show_editor/nested_macro_2 with storage summit.vehicles:temp {}
function summit.dev:zz/vehicle/node/show_editor/show with storage summit.vehicles:temp {}
