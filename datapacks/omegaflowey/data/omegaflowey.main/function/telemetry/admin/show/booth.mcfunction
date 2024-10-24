function omegaflowey.utils:log/self { text_component: '[ \
  "", \
  { "text": "Displaying current ", "color": "aqua" }, \
  { "text": "booth ", "color": "yellow", "bold": true }, \
  { "text": "telemetry:", "color": "aqua" } \
]'}

tellraw @s [ { "text": "server_id", "color": "yellow", "underlined": true } ]
tellraw @s [ { "storage": "omegaflowey:telemetry", "nbt": "data.server_id" } ]

tellraw @s [ { "text": "\nversion", "color": "yellow", "underlined": true } ]
tellraw @s [ { "storage": "omegaflowey:telemetry", "nbt": "data.version" } ]

tellraw @s [ { "text": "\nplayer_id_map", "color": "yellow", "underlined": true } ]
tellraw @s [ { "storage": "omegaflowey:telemetry", "nbt": "data.player_id_map" } ]

tellraw @s [ { "text": "\nbooth_basetick", "color": "yellow", "underlined": true } ]
tellraw @s [ { "storage": "omegaflowey:telemetry", "nbt": "data.booth_basetick" } ]

tellraw @s [ { "text": "\nbooth", "color": "yellow", "underlined": true } ]
tellraw @s [ { "storage": "omegaflowey:telemetry", "nbt": "data.booth" } ]
