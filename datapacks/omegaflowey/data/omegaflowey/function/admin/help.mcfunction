function omegaflowey:utils/log/self { text_component: '[ \
  { "text": "", "color": "white", "bold": false, "extra": \
    [ \
      { "text": "Admin menu:\\n", "color": "aqua", "bold": true }, \
      { "text": "\\n", "color": "white", "bold": false }, \
\
      { \
        "text": "set_admin", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/set_admin" \
        } \
      }, \
      ": sets the current player as an omegaflowey admin (they will see dev/error logs)", \
      "\\n", \
      { \
        "text": "remove_admin", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/remove_admin" \
        } \
      }, \
      ": removes omegaflowey admin tag from current player (use `execute as`)", \
      "\\n", \
      "\\n", \
\
      { \
        "text": "set_active_player", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/set_active_player" \
        } \
      }, \
      ": sets the active bossfight player as the current player (so attacks will target them)", \
      "\\n", \
      { \
        "text": "unset_active_player", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/unset_active_player" \
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
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/attack/bomb" \
        } \
      }, \
      { \
        "text": "dentata-snakes ", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/attack/dentata-snakes" \
        } \
      }, \
      { \
        "text": "finger-guns ", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/attack/finger-guns" \
        } \
      }, \
      "\\n", \
      { "text": "          " }, \
      { \
        "text": "flamethrower ", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/attack/flamethrower" \
        } \
      }, \
      { \
        "text": "flies ", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/attack/flies" \
        } \
      }, \
      "\\n", \
      { "text": "          " }, \
      { \
        "text": "friendliness-pellets ", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/attack/friendliness-pellets" \
        } \
      }, \
      { \
        "text": "homing-vines ", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/attack/homing-vines" \
        } \
      }, \
      "\\n", \
      { "text": "          " }, \
      { \
        "text": "x-bullets-lower ", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/attack/x-bullets-lower" \
        } \
      }, \
      { \
        "text": "x-bullets-upper ", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/attack/x-bullets-upper" \
        } \
      }, \
      "\\n", \
      "\\n", \
\
      { "text": "soul/ ", "color": "aqua" }, \
      { \
        "text": "3 ", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/soul/3" \
        } \
      }, \
      { \
        "text": "4 ", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/soul/4" \
        } \
      }, \
      "\\n", \
      "\\n", \
\
      { \
        "text": "bossfight/join", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/bossfight/join" \
        } \
      }, \
      ": joins the bossfight queue", \
      "\\n", \
      { \
        "text": "bossfight/stop", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/bossfight/stop" \
        } \
      }, \
      ": stops the bossfight", \
      "\\n", \
      "\\n", \
\
      { \
        "text": "give/reward_hat", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/give/reward_hat" \
        } \
      }, \
      ": gives the yellow default reward hat item", \
      "\\n", \
      { \
        "text": "give/reward_hat_low_hits", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/give/reward_hat_low_hits" \
        } \
      }, \
      ": gives the low-hits magenta reward hat item", \
      "\\n", \
      { \
        "text": "give/reward_hat_heal_items", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/give/reward_hat_heal_items" \
        } \
      }, \
      ": gives the heal-items green reward hat item", \
      "\\n", \
      "\\n", \
\
      { \
        "text": "summon/flowey_model", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/summon/flowey_model" \
        } \
      }, \
      ": summons the Omega Flowey model in the bossfight arena", \
      "\\n", \
      { \
        "text": "summon/decorations", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/summon/decorations" \
        } \
      }, \
      ": summons the Omega Flowey booth\'s decorations", \
      "\\n", \
      "\\n", \
\
      { \
        "text": "kill/all", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/kill/all" \
        } \
      }, \
      ": kills all omegaflowey entities and actively running logic", \
      "\\n", \
      "\\n", \
\
      { \
        "text": "kill/decorations", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/kill/decorations" \
        } \
      }, \
      ": kills all decorative AJ models and display entities", \
      "\\n", \
      { \
        "text": "kill/bossfight", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/kill/bossfight" \
        } \
      }, \
      ": ends the bossfight and kills related entities (if active)", \
      "\\n", \
      { \
        "text": "kill/flowey_model", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/kill/flowey_model" \
        } \
      }, \
      ": kills all Omega Flowey models in the bossfight arena (not the bossfight itself)", \
      "\\n", \
      { \
        "text": "kill/petalpipes", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/kill/petalpipes" \
        } \
      }, \
      ": kills the performance-heavy AJ petal pipe models", \
      "\\n", \
      { \
        "text": "kill/queue", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/kill/queue" \
        } \
      }, \
      ": resets the bossfight player queue", \
      "\\n", \
      "\\n", \
      { \
        "text": "queue/enable", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/queue/enable" \
        } \
      }, \
      ": enables the join queue buttons and shows their text", \
      "\\n", \
      { \
        "text": "queue/disable", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/queue/disable" \
        } \
      }, \
      ": disables the join queue buttons and hides their text", \
      "\\n", \
      "\\n", \
      { "text": "death_message/ ", "color": "aqua" }, \
      { \
        "text": "global", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/death_message/set_global" \
        } \
      }, \
      " ", \
      { \
        "text": "local", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:admin/death_message/set_local" \
        } \
      }, \
      "\\n", \
      "\\n", \
      { \
        "text": "setup", \
        "color": "yellow", \
        "click_event": { \
          "action": "suggest_command", \
          "command": "/function omegaflowey:main/setup" \
        } \
      }, \
      ": re-runs the setup function that normally runs on `/reload`" \
    ] \
  } \
]'}
