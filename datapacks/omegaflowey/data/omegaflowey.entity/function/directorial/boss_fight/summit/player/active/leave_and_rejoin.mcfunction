function omegaflowey.main:telemetry/booth/add_tag { name: "player.rejoin.was_in_bossfight" }

# players who leave the server are removed from the bossfight (when they rejoin)
function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player/modify_health_and_tags
function omegaflowey.main:summit/room/cave/active_player_display/update_value with storage omegaflowey:bossfight

function omegaflowey.utils:log/self { text_component: '[\
  { "text": "You were ", "color": "yellow" }, \
  { "text": "removed from the boss-fight ", "color": "red" }, \
  { "text": "because you ", "color": "yellow" }, \
  { "text": "left the server", "color": "gold" } \
]' }
