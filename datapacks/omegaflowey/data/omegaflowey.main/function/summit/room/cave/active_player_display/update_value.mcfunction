# If active player doesn't exist, update active player UUID storage
$execute \
  as $(active_player_uuid) \
  unless entity @s[tag=!omegaflowey.player.fighting_flowey] \
  run data modify storage omegaflowey:bossfight active_player_uuid set value "0"

$execute as $(active_player_uuid) run data modify storage omegaflowey:bossfight active_player_uuid_intarray set from entity @s UUID

$execute as $(active_player_display_uuid) run \
  function omegaflowey.main:summit/room/cave/active_player_display/as_text_display with storage omegaflowey:bossfight

function omegaflowey.main:summit/room/cave/active_player_health_display/update_value with storage omegaflowey:bossfight
