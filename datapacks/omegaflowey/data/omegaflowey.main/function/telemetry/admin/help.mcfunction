function omegaflowey.utils:log/self { text_component: '[ \
  "", \
  { "text": "Telemetry menu:", "color": "light_purple", "bold": true }, \
  "\\n", \
  "\\n", \
\
  { \
    "text": "show", \
    "color": "aqua", \
    "clickEvent": { \
      "action": "suggest_command", \
      "value": "/trigger omegaflowey.player.telemetry.trigger.show" \
    } \
  }, \
  "\\n", \
  { \
    "text": "show_and_clear", \
    "color": "yellow", \
    "clickEvent": { \
      "action": "suggest_command", \
      "value": "/trigger omegaflowey.player.telemetry.trigger.show_and_clear" \
    } \
  } \
]'}
