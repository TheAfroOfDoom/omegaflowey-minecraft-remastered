execute if score #omegaflowey.bossfight.show_death_message_globally omegaflowey.global.flag matches 1 run \
  return run function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "The ", "color": "red" }, \
  { "text": "Flowey death message ", "color": "yellow" }, \
  { "text": "is already set to appear to all players ", "color": "red" }, \
  { "text": "globally ", "color": "yellow" } \
]'}

scoreboard players set #omegaflowey.bossfight.show_death_message_globally omegaflowey.global.flag 1
function omegaflowey.utils:log { text_component: '[ \
  { "selector": "@s", "color": "yellow" }, \
  { "text": " set the ", "color": "gold" }, \
  { "text": "Flowey death message ", "color": "yellow" }, \
  { "text": "to appear ", "color": "gold" }, \
  { "text": "globally", "color": "yellow" } \
]' }
