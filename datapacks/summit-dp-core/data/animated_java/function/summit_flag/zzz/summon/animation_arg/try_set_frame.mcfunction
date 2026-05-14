tag @s add aj.transforms_only
$execute store success score #success aj.i run function animated_java:summit_flag/animations/$(animation)/zzz/set_frame with storage animated_java:temp args
tag @s remove aj.transforms_only
execute if score #success aj.i matches 1 run return 1
return fail
