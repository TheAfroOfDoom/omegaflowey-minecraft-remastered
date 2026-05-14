data modify entity @s data.uuids append from storage animated_java:gu out
function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.data_data set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.summit_flag.node.split_2] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_split_2 set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.summit_flag.node.split_1] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_split_1 set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.summit_flag.node.flag] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_flag set from storage animated_java:gu out
