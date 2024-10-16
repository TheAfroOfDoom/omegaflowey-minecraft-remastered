execute unless entity @s[tag=omegaflowey.player.fighting_flowey] run \
  function omegaflowey.utils:log/self { text_component: '[ \
    { "text": "", "color": "red" }, \
    "Some attacks won\'t function properly if you don\'t have the bossfight tag.\\n", \
    "Run this function to fix: ", \
    { \
      "text": "set_active_player", \
      "color": "yellow", \
      "clickEvent": { \
        "action": "suggest_command", \
        "value": "/function omegaflowey.admin:set_active_player" \
      } \
    } \
  ]' \
}
