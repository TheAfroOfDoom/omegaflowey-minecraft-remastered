$execute on passengers if entity @s[tag=aj.global.data] run function animated_java:summit_flag/animations/animation_model_sway/zzz/frames/$(frame) with entity @s data.uuids_by_name
execute on passengers if entity @s[tag=!aj.global.data] run data modify entity @s start_interpolation set value -1
return 1
