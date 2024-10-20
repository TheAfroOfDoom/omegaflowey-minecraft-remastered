function omegaflowey.main:telemetry/admin/show

execute if entity @s[name=!TheAfroOfDoom] run return run function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "Only ", "color": "red" }, \
  { "text": "TheAfroOfDoom ", "color": "yellow" }, \
  { "text": "can clear the telemetry buffer", "color": "red" } \
]'}

data modify storage omegaflowey:telemetry tags.booth set value []

# Don't clear the latest running fight in case it's still running,
# since bossfight telemetry tags need the root tag to be identifiable
data modify storage omegaflowey:telemetry temp set from storage omegaflowey:telemetry tags.bossfight[-1]
data modify storage omegaflowey:telemetry tags.bossfight set value []
data modify storage omegaflowey:telemetry tags.bossfight append from storage omegaflowey:telemetry temp

function omegaflowey.utils:log/self { text_component: '[ \
  "", \
  { "text": "Cleared ", "color": "red" }, \
  { "text": "current telemetry (except the latest bossfight array entry, if it exists)", "color": "yellow" } \
]'}
