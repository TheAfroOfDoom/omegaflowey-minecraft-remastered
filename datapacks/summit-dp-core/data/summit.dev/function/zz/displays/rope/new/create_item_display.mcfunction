data merge entity @s {Tags: ["summit.rope_start", "summit.static"], item: {id: "minecraft:diamond", components: {"minecraft:custom_data": {target: ""}, "minecraft:custom_model_data": {floats: [1]}}}}
data modify entity @s item.components."minecraft:item_model" set from storage summit:temp model
execute positioned ~1 ~ ~ run function summit.dev:zz/displays/rope/edit
