scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.finger_gun_laser.export_version dummy
scoreboard objectives add aj.finger_gun_laser.rig_loaded dummy
scoreboard players set $aj.finger_gun_laser.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.finger_gun_laser.export_version aj.i -240056154
scoreboard players reset * aj.finger_gun_laser.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.finger_gun_laser.root] run function animated_java:finger_gun_laser/zzzzzzzz/on_load