execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return run \
  function omegaflowey.utils:log/self { text_component: [ \
    "", \
    { "text": "Telemetry collection is already disabled", "color": "yellow" } \
  ]}

scoreboard players set #omegaflowey.telemetry.enabled omegaflowey.global.flag 0
function omegaflowey.utils:log/self { text_component: [ \
  "", \
  { "text": "Disabled telemetry collection", "color": "red" } \
]}
