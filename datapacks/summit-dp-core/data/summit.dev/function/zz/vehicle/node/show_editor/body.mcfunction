$data modify storage summit.vehicles:temp dialog.title set value "Editing: $(name)"
$data modify storage summit.vehicles:temp dialog.actions append value {label: "Delete", action: {type: "minecraft:run_command", command: "execute as $(uuid) run function summit.dev:zz/vehicle/node/delete"}}
$data modify storage summit.vehicles:temp dialog.actions append value {label: "Save", action: {type: "minecraft:run_command", command: 'execute as $(uuid) run function summit.dev:zz/vehicle/node/save {node_id: $(node_id), track_name: "$(track_name)"}'}}
