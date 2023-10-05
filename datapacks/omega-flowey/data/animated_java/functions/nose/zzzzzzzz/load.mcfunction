scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.nose.export_version dummy
scoreboard objectives add aj.nose.rig_loaded dummy
scoreboard objectives add aj.nose.animation.move.local_anim_time dummy
scoreboard objectives add aj.nose.animation.move.loop_mode dummy
scoreboard players set $aj.nose.animation.move aj.id 0
scoreboard players set $aj.nose.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.nose.export_version aj.i -314695857
scoreboard players reset * aj.nose.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.nose.root] run function animated_java:nose/zzzzzzzz/on_load