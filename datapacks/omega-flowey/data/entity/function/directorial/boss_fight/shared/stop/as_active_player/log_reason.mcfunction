execute if score #omegaflowey.bossfight.stop_reason global.flag matches 2 run return run \
  function utils:log/self { text_component: '[\
    { "text": "You were ", "color": "yellow" }, \
    { "text": "removed from the boss-fight ", "color": "red" }, \
    { "text": "because you ", "color": "yellow" }, \
    { "text": "left the arena", "color": "gold" } \
  ]' }
