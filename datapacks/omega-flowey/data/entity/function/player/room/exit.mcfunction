tag @s remove omegaflowey.player

# Remove all room tags if necessary
execute if entity @s[tag=omegaflowey.player.room.underground] run function entity:player/room/underground/exit
execute if entity @s[tag=omegaflowey.player.room.spectator_box] run function entity:player/room/spectator_box/exit
