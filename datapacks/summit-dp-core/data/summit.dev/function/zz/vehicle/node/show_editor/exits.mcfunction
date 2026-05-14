$data modify storage summit.vehicles:temp dialog.body.contents append value [{text: "#$(i):  /", color: "gray"}, {text: "$(value)", color: "white"}, {text: "  [\u270f]", color: "yellow", click_event: {action: "run_command", command: 'function summit.dev:zz/vehicle/node/edit {uuid: "$(uuid)", path: "node.triggers.exit[$(i)]", value: "$(value)"}'}, hover_event: {action: "show_text", value: "Edit this exit trigger"}}, {text: " [-]", color: "red", click_event: {action: "run_command", command: 'function summit.dev:zz/vehicle/node/remove_entry {uuid: "$(uuid)", path: "triggers.exit", i: -1}'}, hover_event: {action: "show_text", value: "Deletes this {label}"}}]
$data modify storage summit.vehicles:temp dialog.body.contents[-1][1].text set from storage summit.vehicles:temp node.triggers.exit[$(i)]
data modify storage summit.vehicles:temp dialog.body.contents[-1] append value "\n"
scoreboard players add #i summit.temp 1
execute store result storage summit.vehicles:temp i int 1 run scoreboard players get #i summit.temp
function summit.dev:zz/vehicle/node/show_editor/exits/nested_macro_0 with storage summit.vehicles:temp {}
execute if score #i summit.temp < #len summit.temp run function summit.dev:zz/vehicle/node/show_editor/exits with storage summit.vehicles:temp {}
