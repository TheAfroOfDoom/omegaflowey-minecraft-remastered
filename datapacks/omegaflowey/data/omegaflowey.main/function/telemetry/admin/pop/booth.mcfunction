function omegaflowey.main:telemetry/admin/show/booth

execute if entity @s[name=!TheAfroOfDoom] run return run function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "Only ", "color": "red" }, \
  { "text": "TheAfroOfDoom ", "color": "yellow" }, \
  { "text": "can clear the telemetry buffer", "color": "red" } \
]'}

data modify storage omegaflowey:telemetry data.booth set value []
function omegaflowey.main:telemetry/setup/initialize_booth_data

function omegaflowey.utils:log/self { text_component: '[ \
  "", \
  { "text": "Cleared ", "color": "red" }, \
  { "text": "current booth telemetry", "color": "yellow" } \
]'}
