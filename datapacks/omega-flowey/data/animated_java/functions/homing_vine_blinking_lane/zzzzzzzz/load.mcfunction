scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.homing_vine_blinking_lane.export_version dummy
scoreboard objectives add aj.homing_vine_blinking_lane.rig_loaded dummy
scoreboard players set $aj.homing_vine_blinking_lane.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.homing_vine_blinking_lane.export_version aj.i -205258125
scoreboard players reset * aj.homing_vine_blinking_lane.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.homing_vine_blinking_lane.root] run function animated_java:homing_vine_blinking_lane/zzzzzzzz/on_load