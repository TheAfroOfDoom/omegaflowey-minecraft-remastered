$data modify storage summit.vehicles:temp dialog.title set value "Editing: $(name)"
$data modify storage summit.vehicles:temp dialog.actions append value {label: "Save", action: {type: "minecraft:run_command", command: 'function summit.dev:zz/vehicle/node/save {uuid: "$(uuid)", node_id: $(node_id), track_name: "$(track_name)"}'}}
