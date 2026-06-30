$summon item_display ~ ~ ~ {Tags: ["summit.vehicle.seat"], teleport_duration: 5, data: {x: $(x), y: $(y), z: $(z)}}
summon interaction ~ ~ ~ {Tags: ["summit.vehicle.seat", "summit.interactable"], data: {summit_interactable: {on_right_click: "function summit.dev:zz/vehicle/seats/mount"}}, width: 0.75d, height: 0.5d}
execute as @n[type=item_display, tag=summit.vehicle.seat] run function summit.dev:zz/vehicle/seats/spawn/nested_macro_0 with storage summit.vehicles:temp {}
