function omegaflowey.main:telemetry/booth/add_tag { name: "player.queue.deny" }

function omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/shared
function omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/shared/as_player
function omegaflowey.entity:directorial/boss_fight/summit/player/queue/check_should_prompt

function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "Removed ", "color": "red" }, \
  { "text": "you from the queue", "color": "yellow" } \
]' }
