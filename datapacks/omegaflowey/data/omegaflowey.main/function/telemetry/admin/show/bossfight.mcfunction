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

# math.0 = total page count
execute store result score @s omegaflowey.math.0 run data get storage omegaflowey:telemetry data.bossfight

# math.1 = current page index
scoreboard players set @s omegaflowey.math.1 0
function omegaflowey.main:telemetry/admin/show/bossfight/iterate
