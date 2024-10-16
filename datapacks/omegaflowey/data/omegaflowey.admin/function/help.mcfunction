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
        "text": "set_active_player", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:set_active_player" \
        } \
      }, \
      ": sets the active bossfight player as the current player (so attacks will target them)", \
      "\\n", \
      { \
        "text": "unset_active_player", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:unset_active_player" \
        } \
      }, \
      ": unsets the active bossfight player tag from the current player", \
      "\\n", \
      "\\n", \
\
      { "text": "attack/ ", "color": "aqua" }, \
      { \
        "text": "bomb ", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:attack/bomb" \
        } \
      }, \
      { \
        "text": "dentata-snakes ", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:attack/dentata-snakes" \
        } \
      }, \
      { \
        "text": "finger-guns ", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:attack/finger-guns" \
        } \
      }, \
      "\\n", \
      { "text": "          " }, \
      { \
        "text": "friendliness-pellets ", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:attack/friendliness-pellets" \
        } \
      }, \
      { \
        "text": "homing-vines ", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:attack/homing-vines" \
        } \
      }, \
      "\\n", \
      { "text": "          " }, \
      { \
        "text": "x-bullets-lower ", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:attack/x-bullets-lower" \
        } \
      }, \
      { \
        "text": "x-bullets-upper ", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:attack/x-bullets-upper" \
        } \
      }, \
      "\\n", \
      "\\n", \
\
      { \
        "text": "summon/flowey_model", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:summon/flowey_model" \
        } \
      }, \
      ": summons the Omega Flowey model in the bossfight arena", \
      "\\n", \
      { \
        "text": "summon/decorations", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:summon/decorations" \
        } \
      }, \
      ": summons the Omega Flowey booth\'s decorations", \
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
        "text": "kill/flowey_model", \
        "color": "yellow", \
        "clickEvent": { \
          "action": "suggest_command", \
          "value": "/function omegaflowey.admin:kill/flowey_model" \
        } \
      }, \
      ": kills all Omega Flowey models in the bossfight arena (not the bossfight itself)", \
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
