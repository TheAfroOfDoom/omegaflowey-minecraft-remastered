setblock -134 43 44 air

$execute unless entity $(active_player_uuid) run \
  data modify entity @s text set value '[{ "text": "NONE", "bold": true, "color": "green" }]'
$execute unless entity $(active_player_uuid) run return 0

$data modify entity @s text set value '[{ "selector": "$(active_player_uuid)", "color": "white" }]'

$setblock -134 43 44 minecraft:player_wall_head[facing=north]{ profile: { id: $(active_player_uuid_intarray) } }
