function reef:zzzinternals/screen/display/common
tag @s add reef.element.animated_graphic
data modify entity @s item.id set value "minecraft:amethyst_shard"
execute if data entity @s data.reef.element_data.components run data modify entity @s item.components set from entity @s data.reef.element_data.components
data modify entity @s item.components."minecraft:item_model" set from entity @s data.reef.element_data.model
data modify entity @s item.components."minecraft:custom_model_data" set value {floats: [0]}
scoreboard players set @s reef.zzzinternals.element.animated_graphic.current_frame 0
execute store result score @s reef.zzzinternals.element.animated_graphic.frames run data get entity @s data.reef.element_data.frames 1
execute if data entity @s data.reef.element_data.commands.on_enter run function reef:zzzinternals/screen/display/animated_graphic/nested_execute_0
