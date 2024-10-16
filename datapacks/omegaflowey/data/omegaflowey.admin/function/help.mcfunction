function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "", "color": "white", "bold": false, "extra": \
    [ \
      { "text": "Admin menu:\\n", "color": "aqua", "bold": true }, \
      { "text": "\\n", "color": "white", "bold": false }, \
\
      { \
        "text": "set_admin", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:set_admin" \
        } \
      }, \
      ": sets the current player as an omegaflowey admin (they will see dev/error logs)", \
      "\\n", \
      { \
        "text": "remove_admin", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:remove_admin" \
        } \
      }, \
      ": removes omegaflowey admin tag from current player (use `execute as`)", \
      "\\n", \
      "\\n", \
\
      { \
        "text": "kill/all", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:kill/all" \
        } \
      }, \
      ": kills all omegaflowey entities and actively running logic", \
      "\\n", \
      "\\n", \
\
      { \
        "text": "kill/decorations", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:kill/decorations" \
        } \
      }, \
      ": kills all decorative AJ models and display entities", \
      "\\n", \
      { \
        "text": "kill/bossfight", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:kill/bossfight" \
        } \
      }, \
      ": ends the bossfight and kills related entities (if active)", \
      "\\n", \
      { \
        "text": "kill/petalpipes", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:kill/petalpipes" \
        } \
      }, \
      ": kills the performance-heavy AJ petal pipe models", \
      "\\n", \
      { \
        "text": "kill/queue", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:kill/queue" \
        } \
      }, \
      ": resets the bossfight player queue" \
    ] \
  } \
]'}
