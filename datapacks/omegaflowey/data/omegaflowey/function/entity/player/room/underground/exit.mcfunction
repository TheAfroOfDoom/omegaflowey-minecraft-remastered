execute if entity @s[tag=omegaflowey.player.room.underground.pit-lower] run \
  function omegaflowey:main/telemetry/booth/add_tag { name: "room.underground.pit-lower.exit" }
tag @s remove omegaflowey.player.room.underground.pit-lower
tag @s remove omegaflowey.room.is_within.underground.pit-lower

function omegaflowey:main/telemetry/booth/add_tag { name: "room.underground.exit" }
tag @s remove omegaflowey.player.room.underground
tag @s remove omegaflowey.room.is_within.underground
