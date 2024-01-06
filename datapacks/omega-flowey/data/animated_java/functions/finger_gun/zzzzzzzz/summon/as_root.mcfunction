execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.finger_gun.rig_loaded 1
scoreboard players operation @s aj.finger_gun.export_version = aj.finger_gun.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:finger_gun/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.finger_gun.variant.shot aj.id run function animated_java:finger_gun/zzzzzzzz/apply_variant/shot/as_root
execute if score #variant aj.i = $aj.finger_gun.variant.cocked aj.id run function animated_java:finger_gun/zzzzzzzz/apply_variant/cocked/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.finger_gun.animation.grow aj.id run function animated_java:finger_gun/zzzzzzzz/animations/grow/apply_frame_as_root
execute if score #animation aj.i = $aj.finger_gun.animation.grow aj.id run scoreboard players operation @s aj.finger_gun.animation.grow.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.finger_gun.animation.shoot aj.id run function animated_java:finger_gun/zzzzzzzz/animations/shoot/apply_frame_as_root
execute if score #animation aj.i = $aj.finger_gun.animation.shoot aj.id run scoreboard players operation @s aj.finger_gun.animation.shoot.local_anim_time = #frame aj.i
execute at @s run function #animated_java:finger_gun/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i