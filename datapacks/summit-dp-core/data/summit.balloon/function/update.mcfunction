execute store result storage summit:temp balloon.item.components."minecraft:custom_data".summit.balloon.count int 1 run scoreboard players get $count summit.temp
execute if score $count summit.temp matches 9.. run scoreboard players set $count summit.temp 8
execute store result storage summit:temp balloon.item.components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get $count summit.temp
scoreboard players set $48 summit.temp 48
scoreboard players operation $balloons summit.temp = $count summit.temp
scoreboard players operation $balloons summit.temp *= $48 summit.temp
data modify storage summit:temp balloon.item.components."minecraft:attribute_modifiers" set value [{type: "minecraft:gravity", id: "summit:balloon_mainhand", amount: 0, operation: "add_value", slot: "mainhand"}, {type: "minecraft:gravity", id: "summit:balloon_offhand", amount: 0, operation: "add_value", slot: "offhand"}]
execute store result storage summit:temp balloon.gravity float -0.0001 run scoreboard players get $balloons summit.temp
data modify storage summit:temp balloon.item.components."minecraft:attribute_modifiers"[].amount set from storage summit:temp balloon.gravity
data modify storage summit:temp balloon.item.components."minecraft:custom_model_data".strings set value []
data modify storage summit:temp balloon.item.components."minecraft:custom_model_data".strings append from storage summit:temp balloon.item.components."minecraft:bundle_contents"[-1].components."minecraft:custom_model_data".strings[0]
data modify storage summit:temp balloon.item.components."minecraft:custom_model_data".strings append from storage summit:temp balloon.item.components."minecraft:bundle_contents"[-2].components."minecraft:custom_model_data".strings[0]
execute if score $count summit.temp matches 3.. run data modify storage summit:temp balloon.item.components."minecraft:custom_model_data".strings append from storage summit:temp balloon.item.components."minecraft:bundle_contents"[-3].components."minecraft:custom_model_data".strings[0]
execute if score $count summit.temp matches 4.. run data modify storage summit:temp balloon.item.components."minecraft:custom_model_data".strings append from storage summit:temp balloon.item.components."minecraft:bundle_contents"[-4].components."minecraft:custom_model_data".strings[0]
execute if score $count summit.temp matches 5.. run data modify storage summit:temp balloon.item.components."minecraft:custom_model_data".strings append from storage summit:temp balloon.item.components."minecraft:bundle_contents"[-5].components."minecraft:custom_model_data".strings[0]
execute if score $count summit.temp matches 6.. run data modify storage summit:temp balloon.item.components."minecraft:custom_model_data".strings append from storage summit:temp balloon.item.components."minecraft:bundle_contents"[-6].components."minecraft:custom_model_data".strings[0]
execute if score $count summit.temp matches 7.. run data modify storage summit:temp balloon.item.components."minecraft:custom_model_data".strings append from storage summit:temp balloon.item.components."minecraft:bundle_contents"[-7].components."minecraft:custom_model_data".strings[0]
execute if score $count summit.temp matches 8.. run data modify storage summit:temp balloon.item.components."minecraft:custom_model_data".strings append from storage summit:temp balloon.item.components."minecraft:bundle_contents"[-8].components."minecraft:custom_model_data".strings[0]
