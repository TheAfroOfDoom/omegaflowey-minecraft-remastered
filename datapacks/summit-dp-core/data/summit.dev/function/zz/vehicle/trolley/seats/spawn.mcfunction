$summon item_display ~ ~ ~ {Tags: ["summit.trolley.seat"], teleport_duration: 5, data: {x: $(x), z: $(z)}}
summon interaction ~ ~ ~ {Tags: ["summit.trolley.seat", "summit.interactable"], data: {summit_interactable: {on_right_click: "function summit.dev:zz/vehicle/trolley/seats/mount"}}, width: 0.75d, height: 0.5d}
execute as @n[type=item_display, tag=summit.trolley.seat] run function summit.dev:zz/vehicle/trolley/seats/spawn/nested_macro_0 with storage summit.vehicles:temp {}
