scoreboard players set @s reef.zzzinternals.element.transition.current_frame 0
execute store result score @s reef.zzzinternals.element.transition.switch_frame run data get storage reef.zzzinternals:tmp root.transition.switch_frame 1
execute store result score @s reef.zzzinternals.element.transition.frames run data get storage reef.zzzinternals:tmp root.transition.frames 1
function reef:zzzinternals/if_else_0
data modify entity @s item.components."minecraft:custom_model_data" set value {floats: [0]}
data modify entity @s transformation.translation set from storage reef.zzzinternals:tmp root.transition.translation
data modify entity @s transformation.scale set from storage reef.zzzinternals:tmp root.transition.scale
data modify entity @s transformation.left_rotation set from storage reef.zzzinternals:tmp root.transition.left_rotation
data modify entity @s transformation.right_rotation set from storage reef.zzzinternals:tmp root.transition.right_rotation
