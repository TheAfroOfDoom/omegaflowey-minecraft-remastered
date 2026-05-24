tag @s add reef.entity
tag @s add reef.element
tag @s add reef.element.new
execute unless data storage reef.zzzinternals:tmp root.element.data.pos run data modify storage reef.zzzinternals:tmp root.element.data.pos set value [0, 0, 0]
rotate @s ~ ~
data modify storage reef.zzzinternals:tmp root.element.pos.x set from storage reef.zzzinternals:tmp root.element.data.pos[0]
data modify storage reef.zzzinternals:tmp root.element.pos.y set from storage reef.zzzinternals:tmp root.element.data.pos[1]
data modify storage reef.zzzinternals:tmp root.element.pos.z set from storage reef.zzzinternals:tmp root.element.data.pos[2]
function reef:zzzinternals/screen/display/common/nested_macro_0 with storage reef.zzzinternals:tmp root.element.pos
data modify entity @s transformation.translation set from storage reef.zzzinternals:tmp root.element.data.translation
execute unless data storage reef.zzzinternals:tmp root.element.data.scale run data modify storage reef.zzzinternals:tmp root.element.data.scale set value [1.0f, 1.0f, 0.01f]
data modify entity @s transformation.scale set from storage reef.zzzinternals:tmp root.element.data.scale
data modify entity @s transformation.left_rotation set from storage reef.zzzinternals:tmp root.element.data.left_rotation
data modify entity @s transformation.right_rotation set from storage reef.zzzinternals:tmp root.element.data.right_rotation
data modify entity @s brightness set value {block: 15, sky: 15}
