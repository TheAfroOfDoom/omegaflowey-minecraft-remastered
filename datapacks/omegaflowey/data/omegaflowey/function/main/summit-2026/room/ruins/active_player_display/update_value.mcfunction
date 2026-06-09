# If active player doesn't exist, update active player UUID storage
$execute unless entity $(active_player_uuid) run data modify storage omegaflowey:bossfight active_player_uuid set value "0"
$execute \
  as $(active_player_uuid) \
  if entity @s[tag=!omegaflowey.player.fighting_flowey] \
  run data modify storage omegaflowey:bossfight active_player_uuid set value "0"

$data modify storage omegaflowey:bossfight active_player_uuid_intarray set from entity $(active_player_uuid) UUID

$execute as $(active_player_display_uuid) run \
  function omegaflowey:main/summit-2026/room/ruins/active_player_display/as_text_display with storage omegaflowey:bossfight
$execute as $(active_player_display_2_uuid) run \
  function omegaflowey:main/summit-2026/room/ruins/active_player_display/as_text_display_2 with storage omegaflowey:bossfight

function omegaflowey:main/summit-2026/room/ruins/active_player_head_display/update_value with storage omegaflowey:bossfight
function omegaflowey:main/summit-2026/room/ruins/active_player_health_display/update_value with storage omegaflowey:bossfight
