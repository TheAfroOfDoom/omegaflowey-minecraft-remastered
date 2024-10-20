# Play eye sheen particles
# TODO(36): this should be summoned at a specific position relative to the eye model (TBD where exactly)
# TODO(36): make better expanding-sheen model with transparency
# TODO(36): maybe `particle minecraft:flash`?
particle minecraft:explosion ~ ~ ~ 0 0 0 10 1 force

function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'playsound omega-flowey:attack.x-bullets.start hostile @s ~ ~ ~ 5 1 1' \
}
