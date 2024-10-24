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
function omegaflowey.main:telemetry/admin/show/booth/show_player_id_map

tellraw @s [ { "text": "\nbooth_basetick", "color": "yellow", "underlined": true } ]
tellraw @s [ { "storage": "omegaflowey:telemetry", "nbt": "data.booth_basetick" } ]

# math.0 = total page count
execute store result score @s omegaflowey.math.0 run data get storage omegaflowey:telemetry data.booth
# math.1 = current page index
scoreboard players set @s omegaflowey.math.1 0
function omegaflowey.main:telemetry/admin/show/booth/iterate
