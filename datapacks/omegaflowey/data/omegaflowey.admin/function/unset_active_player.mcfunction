execute unless entity @s[tag=omegaflowey.player.fighting_flowey] run return run \
  function omegaflowey.utils:log/self { text_component: '[ \
    { "text": "You are already NOT the active bossfight player", "color": "red" } \
  ]' }

tag @s remove omegaflowey.player.fighting_flowey
function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "Unset you as the active bossfight player", "color": "yellow" } \
]' }
