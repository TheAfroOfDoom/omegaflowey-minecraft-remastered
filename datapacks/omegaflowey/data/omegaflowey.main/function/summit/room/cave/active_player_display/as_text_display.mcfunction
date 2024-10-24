setblock -133 43 44 air

$execute unless entity $(active_player_uuid) run return run \
  data modify entity @s text set value '[{ "text": "NONE", "bold": true, "color": "green" }]'

$data modify entity @s text set value '[{ "selector": "$(active_player_uuid)", "color": "white" }]'

$setblock -133 43 44 minecraft:player_wall_head[facing=north]{ profile: { id: $(active_player_uuid_intarray) } }
