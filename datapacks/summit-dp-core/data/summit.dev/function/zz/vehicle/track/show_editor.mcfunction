data modify storage summit.vehicles:temp dialog set value {type: "minecraft:multi_action", title: "", body: {type: "minecraft:plain_message", contents: [""], width: 350}, inputs: [], actions: [{label: "Close"}]}
function summit.dev:zz/vehicle/track/show_editor/nested_macro_0 with storage summit.vehicles:temp track
data modify storage summit.vehicles:temp dialog.body.contents append value [{text: "-----", bold: true, color: "gray"}, "\n\n", "Path\n\n"]
execute store result score #len summit.temp run data get storage summit.vehicles:temp track.path
execute store result score #last summit.temp run data get storage summit.vehicles:temp track.path
scoreboard players remove #last summit.temp 1
scoreboard players set #i summit.temp -1
execute store result storage summit.vehicles:temp ip int 1 run scoreboard players get #i summit.temp
scoreboard players add #i summit.temp 1
execute store result storage summit.vehicles:temp i int 1 run scoreboard players get #i summit.temp
scoreboard players operation #in summit.temp = #i summit.temp
execute store result storage summit.vehicles:temp in int 1 run scoreboard players add #in summit.temp 1
data modify storage summit.vehicles:temp value set from storage summit.vehicles:temp track.path[0]
execute if score #len summit.temp matches 1.. run function summit.dev:zz/vehicle/track/show_editor/nodes with storage summit.vehicles:temp {}
function summit.dev:zz/vehicle/track/show_editor/nested_macro_1 with storage summit.vehicles:temp {}
function summit.dev:zz/vehicle/track/show_editor/show with storage summit.vehicles:temp {}
