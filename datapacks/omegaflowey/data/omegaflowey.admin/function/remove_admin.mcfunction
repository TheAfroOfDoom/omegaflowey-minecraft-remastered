execute if entity @s[tag=!omegaflowey.admin] run return run function omegaflowey.utils:log { text_component: '[ \
  { "selector": "@s", "color": "yellow" }, \
  { "text": " is already not an ", "color": "red" }, \
  { "text": "omegaflowey admin", "color": "gold" } \
]'}

function omegaflowey.utils:log { text_component: '[ \
  { "text": "Removed ", "color": "red" }, \
  { "text": "omegaflowey admin ", "color": "gold" }, \
  { "text": "tag from ", "color": "red" }, \
  { "selector": "@s", "color": "yellow" } \
]'}
tag @s remove omegaflowey.admin
