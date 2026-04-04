# get total number of players in map
execute store result score @s omegaflowey.math.0 run data get storage omegaflowey:telemetry data.player_id_map

# if over 6000, we can't display the map in chat
# (actual limit is closer to 7000, we cut off early to be safe)
execute if score @s omegaflowey.math.0 matches 6000.. run return run tellraw @s [ \
  { "text": "Too many entries to display ", "color": "red" }, \
  { "text": "(", "color": "gold" }, \
  { "score": {"name": "@s", "objective": "omegaflowey.math.0"}, "color": "aqua" }, \
  { "text": ")", "color": "gold" } \
]

tellraw @s [ { "storage": "omegaflowey:telemetry", "nbt": "data.player_id_map" } ]
