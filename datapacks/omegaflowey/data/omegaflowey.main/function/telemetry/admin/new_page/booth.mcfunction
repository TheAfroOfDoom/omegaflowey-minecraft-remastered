execute if entity @s[name=!TheAfroOfDoom] run return run function omegaflowey.utils:log/self { text_component: [ \
  { "text": "Only ", "color": "red" }, \
  { "text": "TheAfroOfDoom ", "color": "yellow" }, \
  { "text": "can start a new page in booth telemetry", "color": "red" } \
]}

function omegaflowey.main:telemetry/booth/add_tag/new_page

function omegaflowey.utils:log/self { text_component: [ \
  { "text": "Started a new page in booth telemetry ", "color": "yellow" } \
]}
