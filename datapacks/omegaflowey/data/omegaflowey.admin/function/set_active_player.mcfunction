tag @a remove omegaflowey.player.fighting_flowey
tag @s add omegaflowey.player.fighting_flowey

function gu:generate
data modify storage omegaflowey:bossfight active_player_uuid set from storage gu:main out

function omegaflowey.main:summit/room/cave/active_player_display/update_value with storage omegaflowey:bossfight

function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "Set you as the active bossfight player", "color": "yellow" } \
]' }
