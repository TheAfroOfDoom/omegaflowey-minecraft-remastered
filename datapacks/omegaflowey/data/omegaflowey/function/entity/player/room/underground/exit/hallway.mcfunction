function omegaflowey:main/telemetry/booth/add_tag { name: "room.underground.exit.by_hallway" }

# NOTE: TAG_SUMMIT_2026_HARDCODED
teleport @s 85.0 82.0 5.0 ~-90 ~

tag @s remove omegaflowey.player.room.underground.exit_hall

function omegaflowey:entity/player/room/underground/exit
