function omegaflowey.main:telemetry/booth/add_tag { name: "room.underground.exit.by_hallway" }

# NOTE: TAG_SUMMIT_HARDCODED
teleport @s -133.5 66.0 43.5

tag @s remove omegaflowey.player.room.underground.exit_hall

function omegaflowey.entity:player/room/underground/exit
