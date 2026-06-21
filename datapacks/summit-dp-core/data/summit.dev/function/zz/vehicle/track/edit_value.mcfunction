data modify storage summit.vehicles:temp dialog set value {type: "minecraft:multi_action", title: "", body: {type: "minecraft:plain_message", contents: [""], width: 350}, inputs: [], actions: [{label: "Close"}]}
data modify storage summit.vehicles:temp dialog.title set value ""
$data modify storage summit.vehicles:temp dialog.inputs append value {type: "minecraft:text", label: "$(path)", key: "value", initial: "$(value)", max_length: 1024}
$data modify storage summit.vehicles:temp template set value 'function summit.dev:zz/vehicle/track/edit_value/confirm {name: "$(name)", path: "$(path)", value: "$'
$data modify storage summit.vehicles:temp dialog.actions[0] set value {label: "Cancel", action: {type: "minecraft:run_command", command: 'function summit.dev:zz/vehicle/track/edit_value/cancel {name: "$(name)"}'}}
function summit.dev:zz/vehicle/track/edit_value/nested_macro_0 with storage summit.vehicles:temp {}
function summit.dev:zz/vehicle/track/edit_value/nested_macro_1 with storage summit.vehicles:temp {}
