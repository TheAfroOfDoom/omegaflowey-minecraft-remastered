$execute \
  as $(active_player_uuid) \
  unless entity @s[type=player, tag=omegaflowey.player.fighting_flowey] \
  run data modify storage omegaflowey:bossfight active_player_uuid set value "0"

$execute as $(active_player_health_display_uuid) run \
  function omegaflowey.main:summit/room/cave/active_player_health_display/as_text_display with storage omegaflowey:bossfight
