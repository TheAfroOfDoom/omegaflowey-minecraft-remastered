$data modify storage summit.vehicles:temp value set value $(value)
$data modify storage summit.vehicles:temp value.uuid set value "$(uuid)"
$data modify storage summit.vehicles:temp value.path set value "$(path)"
data modify storage summit.vehicles:temp dialog set value {type: "minecraft:multi_action", title: "", body: {type: "minecraft:plain_message", contents: [""], width: 350}, inputs: [], actions: [{label: "Close"}]}
data modify storage summit.vehicles:temp dialog.title set value ""
function summit.dev:zz/vehicle/node/edit_effect/contents with storage summit.vehicles:temp value
$data modify storage summit.vehicles:temp dialog.actions[0] set value {label: "Cancel", action: {type: "minecraft:run_command", command: 'function summit.dev:zz/vehicle/node/edit_effect/confirm {uuid: "$(uuid)"}'}}
function summit.dev:zz/vehicle/node/edit_effect/nested_macro_0 with storage summit.vehicles:temp {}
