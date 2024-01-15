scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.friendliness_pellet_ring.export_version dummy
scoreboard objectives add aj.friendliness_pellet_ring.rig_loaded dummy
scoreboard players set $aj.friendliness_pellet_ring.variant.default aj.id 0
scoreboard players set $aj.friendliness_pellet_ring.variant.finished_blinking aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.friendliness_pellet_ring.export_version aj.i -1149592786
scoreboard players reset * aj.friendliness_pellet_ring.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.friendliness_pellet_ring.root] run function animated_java:friendliness_pellet_ring/zzzzzzzz/on_load