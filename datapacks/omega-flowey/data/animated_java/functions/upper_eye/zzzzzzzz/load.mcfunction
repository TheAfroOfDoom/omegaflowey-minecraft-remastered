scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.upper_eye.export_version dummy
scoreboard objectives add aj.upper_eye.rig_loaded dummy
scoreboard objectives add aj.upper_eye.animation.look_around.local_anim_time dummy
scoreboard objectives add aj.upper_eye.animation.look_around.loop_mode dummy
scoreboard players set $aj.upper_eye.animation.look_around aj.id 0
scoreboard players set $aj.upper_eye.variant.default aj.id 0
scoreboard players set $aj.upper_eye.variant.bright aj.id 1
scoreboard players set $aj.upper_eye.variant.colorful aj.id 2
scoreboard players set $aj.upper_eye.variant.dark aj.id 3
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.upper_eye.export_version aj.i -375220021
scoreboard players reset * aj.upper_eye.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.upper_eye.root] run function animated_java:upper_eye/zzzzzzzz/on_load