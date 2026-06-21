execute if data storage summit.vehicles:temp value{type: "wait"} run return run function summit.dev:zz/vehicle/node/edit_effect/contents/wait with storage summit.vehicles:temp value
execute if data storage summit.vehicles:temp value{type: "wait_until"} run return run function summit.dev:zz/vehicle/node/edit_effect/contents/wait_until with storage summit.vehicles:temp value
execute if data storage summit.vehicles:temp value{type: "function"} run return run function summit.dev:zz/vehicle/node/edit_effect/contents/function with storage summit.vehicles:temp value
$tellraw @p ["", {text: "Unhandled type!\n", color: "red"}, "$(type)"]
