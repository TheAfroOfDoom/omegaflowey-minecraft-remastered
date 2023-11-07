scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.friendliness_pellet.export_version dummy
scoreboard objectives add aj.friendliness_pellet.rig_loaded dummy
scoreboard objectives add aj.friendliness_pellet.animation.spin.local_anim_time dummy
scoreboard objectives add aj.friendliness_pellet.animation.spin.loop_mode dummy
scoreboard players set $aj.friendliness_pellet.animation.spin aj.id 0
scoreboard players set $aj.friendliness_pellet.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.friendliness_pellet.export_version aj.i 1850443489
scoreboard players reset * aj.friendliness_pellet.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.friendliness_pellet.root] run function animated_java:friendliness_pellet/zzzzzzzz/on_load