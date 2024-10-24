function omegaflowey.main:telemetry/admin/show/booth

execute if entity @s[name=!TheAfroOfDoom] run return run function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "Only ", "color": "red" }, \
  { "text": "TheAfroOfDoom ", "color": "yellow" }, \
  { "text": "can clear the telemetry buffer", "color": "red" } \
]'}

# Don't clear the latest page to avoid coding fancy logic around page stats and stuff
data modify storage omegaflowey:telemetry temp.latest_page set from storage omegaflowey:telemetry data.booth[-1]
data modify storage omegaflowey:telemetry data.booth set value []
data modify storage omegaflowey:telemetry data.booth append from storage omegaflowey:telemetry temp.latest_page
function omegaflowey.main:telemetry/setup/initialize_booth_data

function omegaflowey.utils:log/self { text_component: '[ \
  "", \
  { "text": "Cleared ", "color": "red" }, \
  { "text": "current booth telemetry (except the latest page)", "color": "yellow" } \
]'}
