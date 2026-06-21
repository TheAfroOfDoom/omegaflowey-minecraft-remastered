tag @s add reef.entity
tag @s add reef.element
data modify entity @s data.reef.element_data set from storage reef.zzzinternals:tmp root.element.data
scoreboard players operation @s reef.zzzinternals.parent.screen.id = .to_set reef.zzzinternals.id_link
execute unless data entity @s data.reef.element_data.pos run data modify entity @s data.reef.element_data.pos set value [0, 0, 0]
rotate @s ~ ~
data modify entity @s data.reef.pos.x set from entity @s data.reef.element_data.pos[0]
data modify entity @s data.reef.pos.y set from entity @s data.reef.element_data.pos[1]
data modify entity @s data.reef.pos.z set from entity @s data.reef.element_data.pos[2]
function reef:zzzinternals/screen/display/common/nested_macro_0 with entity @s data.reef.pos
data modify entity @s transformation.translation set from entity @s data.reef.element_data.translation
execute unless data entity @s data.reef.element_data.scale run data modify entity @s data.reef.element_data.scale set value [1.0f, 1.0f, 0.01f]
data modify entity @s transformation.scale set from entity @s data.reef.element_data.scale
data modify entity @s transformation.left_rotation set from entity @s data.reef.element_data.left_rotation
data modify entity @s transformation.right_rotation set from entity @s data.reef.element_data.right_rotation
data modify entity @s brightness set value {block: 15, sky: 15}
data modify entity @s view_range set value 10
