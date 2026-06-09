$execute unless entity $(active_player_uuid) run return run \
  data modify entity @s text set value [{ "text": "NONE", "bold": true, "color": "green" }]

$data modify entity @s text set value [{ "selector": "$(active_player_uuid)", "color": "aqua" }]
