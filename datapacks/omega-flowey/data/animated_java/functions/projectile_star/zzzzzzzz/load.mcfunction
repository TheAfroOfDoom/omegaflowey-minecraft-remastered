scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.projectile_star.export_version dummy
scoreboard objectives add aj.projectile_star.rig_loaded dummy
scoreboard objectives add aj.projectile_star.animation.spin_and_grow.local_anim_time dummy
scoreboard objectives add aj.projectile_star.animation.spin_and_grow.loop_mode dummy
scoreboard players set $aj.projectile_star.animation.spin_and_grow aj.id 0
scoreboard players set $aj.projectile_star.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.projectile_star.export_version aj.i 1306340719
scoreboard players reset * aj.projectile_star.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.projectile_star.root] run function animated_java:projectile_star/zzzzzzzz/on_load