function omegaflowey.main:telemetry/booth/add_tag { name: "player.rejoin.was_in_queue" }

# players who leave the server are removed from the queue (when they rejoin)
function omegaflowey.entity:directorial/boss_fight/summit/player/queue/leave_and_rejoin/remove_from_queue_array

function omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/shared/as_player

function omegaflowey.utils:log/self { text_component: [\
  { "text": "You were ", "color": "yellow" }, \
  { "text": "removed from the boss-fight queue ", "color": "red" }, \
  { "text": "because you ", "color": "yellow" }, \
  { "text": "left the server", "color": "gold" } \
] }

function omegaflowey.entity:directorial/boss_fight/summit/player/queue/check_should_prompt
