function omegaflowey:utils/log/self { text_component: [ \
  "", \
  { "text": "Telemetry menu:", "color": "light_purple", "bold": true }, \
  "\n", \
  "\n", \
\
  { "text": "show: ", "color": "aqua" }, \
  { \
    "text": "booth", \
    "color": "yellow", \
    "click_event": { \
      "action": "suggest_command", \
      "command": "/trigger omegaflowey.player.telemetry.trigger.show.booth" \
    } \
  }, \
  " ", \
  { \
    "text": "bossfight", \
    "color": "yellow", \
    "click_event": { \
      "action": "suggest_command", \
      "command": "/trigger omegaflowey.player.telemetry.trigger.show.bossfight" \
    } \
  }, \
  "\n", \
  { "text": "pop: ", "color": "aqua" }, \
  { \
    "text": "booth", \
    "color": "yellow", \
    "click_event": { \
      "action": "suggest_command", \
      "command": "/trigger omegaflowey.player.telemetry.trigger.pop.booth" \
    } \
  }, \
  " ", \
  { \
    "text": "bossfight", \
    "color": "yellow", \
    "click_event": { \
      "action": "suggest_command", \
      "command": "/trigger omegaflowey.player.telemetry.trigger.pop.bossfight" \
    } \
  }, \
  "\n", \
  { "text": "new_page: ", "color": "aqua" }, \
  { \
    "text": "booth", \
    "color": "yellow", \
    "click_event": { \
      "action": "suggest_command", \
      "command": "/trigger omegaflowey.player.telemetry.trigger.new_page.booth" \
    } \
  }, \
  " ", \
  { \
    "text": "bossfight", \
    "color": "yellow", \
    "click_event": { \
      "action": "suggest_command", \
      "command": "/trigger omegaflowey.player.telemetry.trigger.new_page.bossfight" \
    } \
  }, \
  "\n", \
  "\n", \
  { \
    "text": "stats", \
    "color": "yellow", \
    "click_event": { \
      "action": "suggest_command", \
      "command": "/trigger omegaflowey.player.telemetry.trigger.stats" \
    } \
  }, \
  "\n", \
  "\n", \
  { \
    "text": "enable", \
    "color": "yellow", \
    "click_event": { \
      "action": "suggest_command", \
      "command": "/trigger omegaflowey.player.telemetry.trigger.enable" \
    } \
  }, \
  "\n", \
  { \
    "text": "disable", \
    "color": "yellow", \
    "click_event": { \
      "action": "suggest_command", \
      "command": "/trigger omegaflowey.player.telemetry.trigger.disable" \
    } \
  } \
]}
