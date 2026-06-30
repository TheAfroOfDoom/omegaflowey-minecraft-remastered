execute align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {height: 1.501d, width: 1.001d, data: {summit_interactable: {on_right_click: "execute on target run function summit.trash_cans:interact"}}, Tags: ["summit.interactable", "summit.trash_can", "summit.trash_can.patched_plateaus"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {item: {id: "diamond", components: {"minecraft:item_model": "summit_props:trash_can/patched_plateaus"}}, Tags: ["summit.static", "summit.trash_can", "summit.trash_can.patched_plateaus"]}
setblock ~ ~ ~ barrier keep
setblock ~ ~1 ~ oxidized_cut_copper_slab keep
