scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.bomb.export_version
scoreboard objectives remove aj.bomb.rig_loaded
scoreboard objectives remove aj.bomb.animation.summon.local_anim_time
scoreboard objectives remove aj.bomb.animation.explode.local_anim_time
scoreboard objectives remove aj.bomb.animation.summon.loop_mode
scoreboard objectives remove aj.bomb.animation.explode.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The bomb Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]