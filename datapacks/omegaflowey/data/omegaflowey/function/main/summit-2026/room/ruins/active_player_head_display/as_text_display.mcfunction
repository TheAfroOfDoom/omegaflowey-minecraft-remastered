$execute unless entity $(active_player_uuid) run return run \
  data modify entity @s text set value ''

$data modify entity @s text set value [ \
  { "player": { "id": $(active_player_uuid_intarray) } } \
]
