# players who leave the server are removed from the queue (when they rejoin)
function entity:directorial/boss_fight/summit/player/queue/leave_and_rejoin/remove_from_queue_array

function entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/shared/as_player

function utils:log/self { text_component: '[\
  { "text": "You were ", "color": "yellow" }, \
  { "text": "removed from the boss-fight queue ", "color": "red" }, \
  { "text": "because you ", "color": "yellow" }, \
  { "text": "left the server", "color": "gold" } \
]' }

function entity:directorial/boss_fight/summit/player/queue/check_should_prompt
