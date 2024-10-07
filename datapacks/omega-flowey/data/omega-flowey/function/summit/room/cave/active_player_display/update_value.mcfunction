$execute as $(active_player_uuid) run data modify storage omegaflowey:bossfight active_player_uuid_intarray set from entity @s UUID

$execute as $(active_player_display_uuid) run \
  function omega-flowey:summit/room/cave/active_player_display/as_text_display with storage omegaflowey:bossfight

function omega-flowey:summit/room/cave/active_player_health_display/update_value with storage omegaflowey:bossfight
