execute if score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return run \
  function omegaflowey.utils:log/self { text_component: '[ \
    "", \
    { "text": "Telemetry collection is already enabled", "color": "yellow" } \
  ]'}

scoreboard players set #omegaflowey.telemetry.enabled omegaflowey.global.flag 1
function omegaflowey.utils:log/self { text_component: '[ \
  "", \
  { "text": "Enabled telemetry collection", "color": "aqua" } \
]'}
