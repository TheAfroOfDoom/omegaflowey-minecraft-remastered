scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.pipe_upper_eye.export_version dummy
scoreboard objectives add aj.pipe_upper_eye.rig_loaded dummy
scoreboard objectives add aj.pipe_upper_eye.animation.float_and_pulsate.local_anim_time dummy
scoreboard objectives add aj.pipe_upper_eye.animation.pulsate2.local_anim_time dummy
scoreboard objectives add aj.pipe_upper_eye.animation.float_and_pulsate.loop_mode dummy
scoreboard objectives add aj.pipe_upper_eye.animation.pulsate2.loop_mode dummy
scoreboard players set $aj.pipe_upper_eye.animation.float_and_pulsate aj.id 0
scoreboard players set $aj.pipe_upper_eye.animation.pulsate2 aj.id 1
scoreboard players set $aj.pipe_upper_eye.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.pipe_upper_eye.export_version aj.i 582387785
scoreboard players reset * aj.pipe_upper_eye.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.pipe_upper_eye.root] run function animated_java:pipe_upper_eye/zzzzzzzz/on_load