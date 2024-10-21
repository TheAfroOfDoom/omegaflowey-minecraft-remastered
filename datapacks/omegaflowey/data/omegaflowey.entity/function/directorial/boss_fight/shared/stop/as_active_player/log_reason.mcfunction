execute if score #omegaflowey.bossfight.stop_reason omegaflowey.global.flag matches 3 run return run \
  function omegaflowey.utils:log/self { text_component: '[\
    { "text": "You were ", "color": "yellow" }, \
    { "text": "removed from the boss-fight ", "color": "red" }, \
    { "text": "because you ", "color": "yellow" }, \
    { "text": "left the arena", "color": "gold" } \
  ]' }

execute if score #omegaflowey.bossfight.stop_reason omegaflowey.global.flag matches 6 run return run \
  function omegaflowey.utils:log/self { text_component: '[\
    { "text": "You were ", "color": "yellow" }, \
    { "text": "removed from the boss-fight ", "color": "red" }, \
    { "text": "because you took ", "color": "yellow" }, \
    { "text": "too long to complete it", "color": "gold" } \
  ]' }
