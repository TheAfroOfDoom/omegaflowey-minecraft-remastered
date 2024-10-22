function omegaflowey.utils:log/self { text_component: '[ \
  "", \
  { "text": "Telemetry menu:", "color": "light_purple", "bold": true }, \
  "\\n", \
  "\\n", \
\
  { "text": "show: ", "color": "aqua" }, \
  { \
    "text": "booth", \
    "color": "yellow", \
    "clickEvent": { \
      "action": "suggest_command", \
      "value": "/trigger omegaflowey.player.telemetry.trigger.show.booth" \
    } \
  }, \
  " ", \
  { \
    "text": "bossfight", \
    "color": "yellow", \
    "clickEvent": { \
      "action": "suggest_command", \
      "value": "/trigger omegaflowey.player.telemetry.trigger.show.bossfight" \
    } \
  }, \
  "\\n", \
  { "text": "pop: ", "color": "aqua" }, \
  { \
    "text": "booth", \
    "color": "yellow", \
    "clickEvent": { \
      "action": "suggest_command", \
      "value": "/trigger omegaflowey.player.telemetry.trigger.pop.booth" \
    } \
  }, \
  " ", \
  { \
    "text": "bossfight", \
    "color": "yellow", \
    "clickEvent": { \
      "action": "suggest_command", \
      "value": "/trigger omegaflowey.player.telemetry.trigger.pop.bossfight" \
    } \
  }, \
  "\\n", \
  { \
    "text": "enable", \
    "color": "yellow", \
    "clickEvent": { \
      "action": "suggest_command", \
      "value": "/trigger omegaflowey.player.telemetry.trigger.enable" \
    } \
  }, \
  { \
    "text": "disable", \
    "color": "aqua", \
    "clickEvent": { \
      "action": "suggest_command", \
      "value": "/trigger omegaflowey.player.telemetry.trigger.disable" \
    } \
  } \
]'}
