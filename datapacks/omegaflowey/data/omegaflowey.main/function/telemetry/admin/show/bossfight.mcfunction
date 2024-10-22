function omegaflowey.utils:log/self { text_component: '[ \
  "", \
  { "text": "Displaying current ", "color": "aqua" }, \
  { "text": "bossfight ", "color": "yellow", "bold": true }, \
  { "text": "telemetry:", "color": "aqua" } \
]'}

tellraw @s [ { "text": "server_id", "color": "yellow", "underlined": true } ]
tellraw @s [ { "storage": "omegaflowey:telemetry", "nbt": "data.server_id" } ]

tellraw @s [ { "text": "\nversion", "color": "yellow", "underlined": true } ]
tellraw @s [ { "storage": "omegaflowey:telemetry", "nbt": "data.version" } ]

tellraw @s [ { "text": "\nbossfight", "color": "yellow", "underlined": true } ]
tellraw @s [ { "storage": "omegaflowey:telemetry", "nbt": "data.bossfight" } ]
