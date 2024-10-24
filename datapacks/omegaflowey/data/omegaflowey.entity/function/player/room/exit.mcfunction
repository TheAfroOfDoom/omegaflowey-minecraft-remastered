tag @s remove omegaflowey.player

# Remove all room tags if necessary
execute if entity @s[tag=omegaflowey.player.room.underground] run function omegaflowey.entity:player/room/underground/exit
execute if entity @s[tag=omegaflowey.player.room.spectator_box] run function omegaflowey.entity:player/room/spectator_box/exit

function omegaflowey.main:telemetry/booth/add_tag { name: "root.exit" }
