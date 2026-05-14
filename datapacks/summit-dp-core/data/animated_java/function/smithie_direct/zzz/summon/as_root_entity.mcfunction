execute store result score @s aj.id run scoreboard players add aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
function animated_java:global/gu/get_entity_uuid_string
execute at @s on passengers if entity @s[tag=aj.global.data] run function animated_java:smithie_direct/zzz/summon/as_data_entity
execute if data storage animated_java:temp args.variant run function animated_java:smithie_direct/zzz/summon/variant_arg/process with storage animated_java:temp args
execute if score #success aj.i matches 0 run return fail
function animated_java:smithie_direct/set_default_pose
execute if data storage animated_java:temp args.animation run function animated_java:smithie_direct/zzz/summon/animation_arg/process with storage animated_java:temp args
execute if score #success aj.i matches 0 run return fail
execute on passengers run rotate @s ~ ~
data modify entity @s teleport_duration set value 1
execute on passengers run data modify entity @s teleport_duration set value 1
tag @s remove aj.new
execute on passengers run tag @s remove aj.new
