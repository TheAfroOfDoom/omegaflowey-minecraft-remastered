execute store result storage summit.climbing:master init.rotation.angle_1 int 1 run data get entity @s Rotation[0]
execute store result storage summit.climbing:master init.rotation_direction int 1 run function summit.climbing:util/shortest_angle_direction with storage summit.climbing:master init.rotation
execute if data storage summit.climbing:master {init: {rotation_direction: -1}} store result storage summit.climbing:master util.shortest_angle_difference int -1 run data get storage summit.climbing:master util.shortest_angle_difference
data modify storage summit.climbing:master init.rotation.target set from storage summit.climbing:master util.shortest_angle_difference
execute if data storage summit.climbing:master {init: {rotation_direction: -1}} run data modify storage summit.climbing:master init.rotation.operation set value "remove"
execute if data storage summit.climbing:master {init: {rotation_direction: 1}} run data modify storage summit.climbing:master init.rotation.operation set value "add"
function summit.climbing:climb/player/rotate/set_target/relative/init with storage summit.climbing:master init.rotation
