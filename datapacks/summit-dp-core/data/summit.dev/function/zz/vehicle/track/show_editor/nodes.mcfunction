$data modify storage summit.vehicles:temp dialog.body.contents append value ["", {text: "#$(i):  ", color: "gray"}]
$data modify storage summit.vehicles:temp dialog.body.contents[-1] append value {text: "$(value)"}
$data modify storage summit.vehicles:temp dialog.body.contents[-1] append value {text: "  [\u270f]", color: "yellow", click_event: {action: "run_command", command: 'function summit.dev:zz/vehicle/track/edit_value {name: "$(name)", path: "track.path[$(i)]", value: "$(value)"}'}, hover_event: {action: "show_text", value: "Edit this node"}}
$data modify storage summit.vehicles:temp dialog.body.contents[-1] append value {text: " [-]", color: "red", click_event: {action: "run_command", command: 'function summit.dev:zz/vehicle/track/remove_entry {name: "$(name)", path: "track.path", i: $(i)}'}, hover_event: {action: "show_text", value: "Deletes this node"}}
$execute if score #i summit.temp matches 1.. run data modify storage summit.vehicles:temp dialog.body.contents append value [{text: " \u2191", color: "gray", click_event: {action: "run_command", command: 'function summit.dev:zz/vehicle/track/swap_entry {name: "$(name)", path: "track.path", from: $(i), to: $(ip)}'}, hover_event: {action: "show_text", value: "Move this node up"}}]
$execute if score #i summit.temp < #last summit.temp if score #len summit.temp matches 2.. run data modify storage summit.vehicles:temp dialog.body.contents append value [{text: " \u2193", color: "gray", click_event: {action: "run_command", command: 'function summit.dev:zz/vehicle/track/swap_entry {name: "$(name)", path: "track.path", from: $(i), to: $(in)}'}, hover_event: {action: "show_text", value: "Move this node down"}}]
data modify storage summit.vehicles:temp dialog.body.contents[-1] append value "\n"
execute store result storage summit.vehicles:temp ip int 1 run scoreboard players get #i summit.temp
scoreboard players add #i summit.temp 1
execute store result storage summit.vehicles:temp i int 1 run scoreboard players get #i summit.temp
scoreboard players operation #in summit.temp = #i summit.temp
execute store result storage summit.vehicles:temp in int 1 run scoreboard players add #in summit.temp 1
function summit.dev:zz/vehicle/track/show_editor/nodes/nested_macro_0 with storage summit.vehicles:temp {}
execute if score #i summit.temp < #len summit.temp run function summit.dev:zz/vehicle/track/show_editor/nodes with storage summit.vehicles:temp {}
