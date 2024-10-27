execute if score #omegaflowey.bossfight.show_death_message_globally omegaflowey.global.flag matches 0 run \
  return run function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "The ", "color": "red" }, \
  { "text": "Flowey death message ", "color": "yellow" }, \
  { "text": "is already set to ", "color": "red" }, \
  { "text": "local ", "color": "yellow" }, \
  { "text": "(only appear to players near the Flowey booth)", "color": "red" } \
]'}

scoreboard players set #omegaflowey.bossfight.show_death_message_globally omegaflowey.global.flag 0
function omegaflowey.utils:log { text_component: '[ \
  { "selector": "@s", "color": "yellow" }, \
  { "text": " set the ", "color": "gold" }, \
  { "text": "Flowey death message ", "color": "yellow" }, \
  { "text": "to appear ", "color": "gold" }, \
  { "text": "locally", "color": "yellow" } \
]' }
