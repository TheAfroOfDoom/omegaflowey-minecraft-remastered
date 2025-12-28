execute if entity @s[tag=omegaflowey.admin] run return run function omegaflowey.utils:log { text_component: [ \
  { "selector": "@s", "color": "yellow" }, \
  { "text": " is already an ", "color": "red" }, \
  { "text": "omegaflowey admin", "color": "gold" } \
]}

tag @s add omegaflowey.admin
function omegaflowey.utils:log { text_component: [ \
  { "text": "Added ", "color": "aqua" }, \
  { "text": "omegaflowey admin ", "color": "gold" }, \
  { "text": "tag to ", "color": "aqua" }, \
  { "selector": "@s", "color": "yellow" } \
]}
