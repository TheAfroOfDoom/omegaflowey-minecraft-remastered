scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.finger_gun.export_version dummy
scoreboard objectives add aj.finger_gun.rig_loaded dummy
scoreboard objectives add aj.finger_gun.animation.grow.local_anim_time dummy
scoreboard objectives add aj.finger_gun.animation.shoot.local_anim_time dummy
scoreboard objectives add aj.finger_gun.animation.grow.loop_mode dummy
scoreboard objectives add aj.finger_gun.animation.shoot.loop_mode dummy
scoreboard players set $aj.finger_gun.animation.grow aj.id 0
scoreboard players set $aj.finger_gun.animation.shoot aj.id 1
scoreboard players set $aj.finger_gun.variant.shot aj.id 0
scoreboard players set $aj.finger_gun.variant.cocked aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.finger_gun.export_version aj.i -866909322
scoreboard players reset * aj.finger_gun.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.finger_gun.root] run function animated_java:finger_gun/zzzzzzzz/on_load