scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.bomb.export_version dummy
scoreboard objectives add aj.bomb.rig_loaded dummy
scoreboard objectives add aj.bomb.animation.summon.local_anim_time dummy
scoreboard objectives add aj.bomb.animation.explode.local_anim_time dummy
scoreboard objectives add aj.bomb.animation.summon.loop_mode dummy
scoreboard objectives add aj.bomb.animation.explode.loop_mode dummy
scoreboard players set $aj.bomb.animation.summon aj.id 0
scoreboard players set $aj.bomb.animation.explode aj.id 1
scoreboard players set $aj.bomb.variant.default aj.id 0
scoreboard players set $aj.bomb.variant.explode aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.bomb.export_version aj.i -1471726807
scoreboard players reset * aj.bomb.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.bomb.root] run function animated_java:bomb/zzzzzzzz/on_load