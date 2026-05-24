function reef:zzzinternals/screen/display/common
tag @s add reef.element.text
tag @s add summit.static
data modify entity @s text set from storage reef.zzzinternals:tmp root.element.data.text
execute unless data storage reef.zzzinternals:tmp root.element.data.background run data modify storage reef.zzzinternals:tmp root.element.data.background set value 0
data modify entity @s background set from storage reef.zzzinternals:tmp root.element.data.background
data modify entity @s alignment set from storage reef.zzzinternals:tmp root.element.data.alignment
data modify entity @s line_width set from storage reef.zzzinternals:tmp root.element.data.width
