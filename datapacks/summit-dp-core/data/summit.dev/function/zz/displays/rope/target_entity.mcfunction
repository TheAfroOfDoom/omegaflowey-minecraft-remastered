$execute unless entity $(target) run return run tag @s remove summit.updating
data modify storage summit:temp start set from entity @s Pos
$data modify storage summit:temp target set from entity $(target) Pos
data modify entity @s item.components."minecraft:custom_data".target_pos set from storage summit:temp target
execute store result score sx summit.temp run data get storage summit:temp start[0] 100
execute store result score tx summit.temp run data get storage summit:temp target[0] 100
data modify storage summit:temp tx set from storage summit:temp target[0]
execute store result storage summit:temp dx float 0.01 run scoreboard players operation tx summit.temp -= sx summit.temp
execute store result score sy summit.temp run data get storage summit:temp start[1] 100
execute store result score ty summit.temp run data get storage summit:temp target[1] 100
data modify storage summit:temp ty set from storage summit:temp target[1]
execute store result storage summit:temp dy float 0.01 run scoreboard players operation ty summit.temp -= sy summit.temp
execute store result score sz summit.temp run data get storage summit:temp start[2] 100
execute store result score tz summit.temp run data get storage summit:temp target[2] 100
data modify storage summit:temp tz set from storage summit:temp target[2]
execute store result storage summit:temp dz float 0.01 run scoreboard players operation tz summit.temp -= sz summit.temp
data modify storage summit:temp transformation set from entity @s
execute summon item_display run function summit.dev:zz/displays/rope/target_entity/nested_macro_0 with storage summit:temp {}
function summit.dev:zz/displays/rope/target_entity/nested_macro_1 with storage summit:temp {}
data modify entity @s transformation.left_rotation set from storage summit:temp rotation
data modify entity @s transformation.scale[2] set from storage summit:temp distance
data modify entity @s item.components."minecraft:custom_model_data".floats[0] set from storage summit:temp distance
