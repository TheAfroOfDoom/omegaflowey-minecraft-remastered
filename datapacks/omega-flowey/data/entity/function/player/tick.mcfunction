# Handle undoing a previous screen shake if necessary
execute unless entity @s[scores={player.shake.pitch=0,player.shake.yaw=0}] run function entity:player/shake_screen
