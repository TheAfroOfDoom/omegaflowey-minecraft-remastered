function utils:log/self { text_component: '[ \
  { \
    "text": "", \
    "color": "yellow", \
    "extra": [ \
      "The ", \
      { "text": "boss-fight ", "color": "aqua" }, \
      "is now ready for you. Click ", \
      { \
        "text": "", \
        "color": "gray", \
        "clickEvent": { \
          "action": "run_command", \
          "value": "/tellraw @s [\\"confirm\\"]" \
        }, \
        "extra": [ \
          "[", \
          { "text": "CONFIRM", "color": "dark_green" }, \
          "]" \
        ] \
      }, \
      " in the next ", \
      { "text": "15s ", "color": "light_purple" }, \
      "to be teleported to the arena:" \
    ] \
  } \
]'}

function utils:log/self { text_component: '[ \
  { \
    "text": "", \
    "color": "gray", \
    "extra": [ \
      { \
        "text": "", \
        "clickEvent": { \
          "action": "run_command", \
          "value": "/tellraw @s [\\"confirm\\"]" \
        }, \
        "extra": [ \
          "[", \
          { "text": "CONFIRM", "color": "dark_green" }, \
          "]" \
        ] \
      }, \
      " | ", \
      { \
        "text": "", \
        "clickEvent": { \
          "action": "run_command", \
          "value": "/tellraw @s [\\"deny\\"]" \
        }, \
        "extra": [ \
          "[", \
          { "text": "DENY", "color": "red" }, \
          "]" \
        ] \
      } \
    ] \
  } \
]'}
