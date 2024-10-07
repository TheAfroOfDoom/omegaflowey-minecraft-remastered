# players who leave the server are removed from the bossfight (when they rejoin)
function entity:directorial/boss_fight/shared/stop/as_active_player/modify_health_and_tags

function utils:log/self { text_component: '[\
  { "text": "You were ", "color": "yellow" }, \
  { "text": "removed from the boss-fight ", "color": "red" }, \
  { "text": "because you ", "color": "yellow" }, \
  { "text": "left the server", "color": "gold" } \
]' }
