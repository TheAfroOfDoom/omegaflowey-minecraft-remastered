scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.projectile_star.export_version
scoreboard objectives remove aj.projectile_star.rig_loaded
scoreboard objectives remove aj.projectile_star.animation.spin.local_anim_time
scoreboard objectives remove aj.projectile_star.animation.spin_and_grow.local_anim_time
scoreboard objectives remove aj.projectile_star.animation.spin.loop_mode
scoreboard objectives remove aj.projectile_star.animation.spin_and_grow.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The projectile_star Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]