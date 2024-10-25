execute if score @s omegaflowey.math.1 >= @s omegaflowey.math.0 run return 0

tellraw @s [ \
  "", \
  { "text": "\npage:", "color": "yellow", "underlined": true }, \
  " ", \
  { "score": { "name": "@s", "objective": "omegaflowey.math.1" }, "color": "aqua" } \
]

execute store result storage omegaflowey:telemetry temp.page_index int 1 run \
  scoreboard players get @s omegaflowey.math.1
function omegaflowey.main:telemetry/admin/show/booth/get_page with storage omegaflowey:telemetry temp

scoreboard players add @s omegaflowey.math.1 1

function omegaflowey.main:telemetry/admin/show/booth/iterate
