scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.tv_screen.export_version dummy
scoreboard objectives add aj.tv_screen.rig_loaded dummy
scoreboard objectives add aj.tv_screen.animation.move.local_anim_time dummy
scoreboard objectives add aj.tv_screen.animation.move.loop_mode dummy
scoreboard players set $aj.tv_screen.animation.move aj.id 0
scoreboard players set $aj.tv_screen.variant.default aj.id 0
scoreboard players set $aj.tv_screen.variant.warning aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.tv_screen.export_version aj.i 458335806
scoreboard players reset * aj.tv_screen.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.tv_screen.root] run function animated_java:tv_screen/zzzzzzzz/on_load