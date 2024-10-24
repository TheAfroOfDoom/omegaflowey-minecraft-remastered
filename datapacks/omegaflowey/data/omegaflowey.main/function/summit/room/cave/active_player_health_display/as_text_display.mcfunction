$execute unless entity $(active_player_uuid) run return run \
  data modify entity @s text set value '""'

$data modify entity @s text set value '[ \
  { "text": "\\uf610", "font": "omega-flowey:custom" }, \
  " ", \
  { "score": { "name": "$(active_player_uuid)", "objective": "omegaflowey.player.health" } } \
]'
