execute align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {height: 1.1885d, width: 1.001d, data: {summit_interactable: {on_right_click: "execute on target run function summit.trash_cans:interact"}}, Tags: ["summit.interactable", "summit.trash_can", "summit.trash_can.welded_woodlands"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {item: {id: "diamond", components: {"minecraft:item_model": "summit_props:trash_can/welded_woodlands"}}, Tags: ["summit.static", "summit.trash_can", "summit.trash_can.welded_woodlands"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.001f, 0.0f], scale: [1.0f, 1.0f, 1.0f]}}
setblock ~ ~ ~ barrier keep
setblock ~ ~1 ~ oxidized_copper_trapdoor keep
