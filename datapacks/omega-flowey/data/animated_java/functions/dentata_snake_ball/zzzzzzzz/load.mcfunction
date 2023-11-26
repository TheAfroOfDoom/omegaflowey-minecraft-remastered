scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.dentata_snake_ball.export_version dummy
scoreboard objectives add aj.dentata_snake_ball.rig_loaded dummy
scoreboard objectives add aj.dentata_snake_ball.animation.roll_scale_36.local_anim_time dummy
scoreboard objectives add aj.dentata_snake_ball.animation.roll_scale_40.local_anim_time dummy
scoreboard objectives add aj.dentata_snake_ball.animation.roll_scale_44.local_anim_time dummy
scoreboard objectives add aj.dentata_snake_ball.animation.roll_scale_50.local_anim_time dummy
scoreboard objectives add aj.dentata_snake_ball.animation.roll_scale_36.loop_mode dummy
scoreboard objectives add aj.dentata_snake_ball.animation.roll_scale_40.loop_mode dummy
scoreboard objectives add aj.dentata_snake_ball.animation.roll_scale_44.loop_mode dummy
scoreboard objectives add aj.dentata_snake_ball.animation.roll_scale_50.loop_mode dummy
scoreboard players set $aj.dentata_snake_ball.animation.roll_scale_36 aj.id 0
scoreboard players set $aj.dentata_snake_ball.animation.roll_scale_40 aj.id 1
scoreboard players set $aj.dentata_snake_ball.animation.roll_scale_44 aj.id 2
scoreboard players set $aj.dentata_snake_ball.animation.roll_scale_50 aj.id 3
scoreboard players set $aj.dentata_snake_ball.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.dentata_snake_ball.export_version aj.i -34782367
scoreboard players reset * aj.dentata_snake_ball.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.dentata_snake_ball.root] run function animated_java:dentata_snake_ball/zzzzzzzz/on_load