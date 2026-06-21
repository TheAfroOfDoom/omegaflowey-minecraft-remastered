function reef:zzzinternals/screen/display/common
tag @s add reef.element.text
data modify entity @s text set from entity @s data.reef.element_data.text
execute unless data entity @s data.reef.element_data.background run data modify entity @s data.reef.element_data.background set value 0
data modify entity @s background set from entity @s data.reef.element_data.background
data modify entity @s alignment set from entity @s data.reef.element_data.alignment
data modify entity @s line_width set from entity @s data.reef.element_data.width
execute if data entity @s data.reef.element_data.components run data modify entity @s item.components set from entity @s data.reef.element_data.components
execute if data entity @s data.reef.element_data.commands.on_enter run function reef:zzzinternals/screen/display/text/nested_execute_0
