$execute unless entity $(active_player_uuid) run \
  data modify entity @s text set value '""'
$execute unless entity $(active_player_uuid) run return 0

$data modify entity @s text set value '[ \
  { "text": "\\uf610", "font": "omega-flowey:custom" }, \
  " ", \
  { "score": { "name": "$(active_player_uuid)", "objective": "player.health" } } \
]'
