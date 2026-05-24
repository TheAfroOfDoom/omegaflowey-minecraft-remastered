summon marker ~ ~ ~ {Tags: ["summit.vehicles.node"], data: {node: {}, track_name: {}, uuid: ""}}
summon item_display ~ ~ ~ {Tags: ["summit.vehicles.node"], item: {id: "minecraft:stone_button"}}
summon interaction ~ ~ ~ {Tags: ["summit.vehicles.node", "summit.interactable"], data: {summit_interactable: {on_right_click: "function summit.dev:zz/vehicle/node/on_right_click", on_left_click: "function summit.dev:zz/vehicle/node/on_left_click"}}}
execute as @n[type=marker, tag=summit.vehicles.node] run function summit.dev:zz/vehicle/node/spawn_node/as
