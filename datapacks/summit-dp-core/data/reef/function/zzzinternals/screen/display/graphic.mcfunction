function reef:zzzinternals/screen/display/common
tag @s add reef.element.graphic
data modify entity @s item.id set value "minecraft:amethyst_shard"
execute if data entity @s data.reef.element_data.components run data modify entity @s item.components set from entity @s data.reef.element_data.components
execute if data entity @s data.reef.element_data.commands.on_enter run function reef:zzzinternals/screen/display/graphic/nested_execute_0
data modify entity @s item.components."minecraft:item_model" set from entity @s data.reef.element_data.model
