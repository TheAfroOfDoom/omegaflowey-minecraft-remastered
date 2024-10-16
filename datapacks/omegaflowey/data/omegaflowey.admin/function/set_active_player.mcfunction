execute if entity @s[tag=omegaflowey.player.fighting_flowey] run return run \
  function omegaflowey.utils:log/self { text_component: '[ \
    { "text": "You are already the active bossfight player", "color": "red" } \
  ]' }

tag @a remove omegaflowey.player.fighting_flowey
tag @s add omegaflowey.player.fighting_flowey
function gu:generate
data modify storage omegaflowey:bossfight active_player_uuid set from storage gu:main out
function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "Set you as the active bossfight player", "color": "yellow" } \
]' }
