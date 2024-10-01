# If we bounced, play bounce sound
# Only the bullet-head makes bounce sounds/shakes the player's screen (see `maybe_bounce.mcfunction`)
playsound omega-flowey:attack.dentata-snakes.bounce hostile @a ~ ~ ~ 5 1
# execute as @a unless entity @s[tag=!omegaflowey.player.fighting_flowey,team=!dead,team=!spectator] at @s run function entity:utils/shake_screen
