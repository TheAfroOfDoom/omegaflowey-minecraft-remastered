# If we bounced, play bounce sound
# Only the bullet-head makes bounce sounds/shakes the player's screen (see `maybe_bounce.mcfunction`)
playsound omega-flowey:attack.dentata-snakes.bounce hostile @a ~ ~ ~ 5 1
# execute as @a unless entity @s[tag=!omegaflowey.player.fighting_flowey,team=!dead,tag=!omegaflowey.player.room.spectator_box] at @s run function omegaflowey.entity:utils/shake_screen
