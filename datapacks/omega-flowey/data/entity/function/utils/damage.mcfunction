# Check if player is within some radius
$execute as $(active_player_uuid) if entity @s[distance=..$(radius), tag=omegaflowey.player.fighting_flowey] run \
  function entity:utils/damage/as_player with storage utils:damage
