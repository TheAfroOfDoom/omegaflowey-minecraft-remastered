$execute on passengers if entity @s[tag=aj.global.data] run function animated_java:smithie_direct/animations/animation_smithie_direct_intro/zzz/frames/$(frame) with entity @s data.uuids_by_name
execute on passengers if entity @s[tag=!aj.global.data] run data modify entity @s start_interpolation set value -1
return 1
