# NOTE: TAG_SUMMIT_2026_HARDCODED
setblock 96 54 -15 air

$execute unless entity $(active_player_uuid) run return run \
  data modify entity @s text set value [{ "text": "NONE", "bold": true, "color": "green" }]

data modify entity @s text set value [{ "text": "XXXXXXXXXXXXXXXX", "color": "white" }]
# $data modify entity @s text set value [{ "selector": "$(active_player_uuid)", "color": "white" }]

# NOTE: TAG_SUMMIT_2026_HARDCODED
$setblock 96 54 -15 minecraft:player_wall_head[facing=west]{ profile: { id: $(active_player_uuid_intarray) } }
