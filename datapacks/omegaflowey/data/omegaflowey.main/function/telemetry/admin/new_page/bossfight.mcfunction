execute if entity @s[name=!TheAfroOfDoom] run return run function omegaflowey.utils:log/self { text_component: [ \
  { "text": "Only ", "color": "red" }, \
  { "text": "TheAfroOfDoom ", "color": "yellow" }, \
  { "text": "can start a new page in bossfight telemetry", "color": "red" } \
]}

$execute if entity $(boss_fight_uuid) run return run function omegaflowey.utils:log/self { text_component: [ \
  { "text": "Cannot start a new page in bossfight telemetry: a bossfight is currently active", "color": "red" } \
]}

function omegaflowey.main:telemetry/bossfight/tag/root/start/new_page

function omegaflowey.utils:log/self { text_component: [ \
  { "text": "Started a new page in bossfight telemetry ", "color": "yellow" }  \
]}
