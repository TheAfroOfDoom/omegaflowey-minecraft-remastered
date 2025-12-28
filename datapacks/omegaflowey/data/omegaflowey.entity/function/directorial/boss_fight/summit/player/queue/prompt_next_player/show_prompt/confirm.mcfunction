function omegaflowey.main:telemetry/booth/add_tag { name: "player.queue.confirm" }

function omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/shared/as_player/triggers
schedule clear omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/timeout

function omegaflowey.utils:log/self { text_component: [ \
  { "text": "Teleporting ", "color": "green" }, \
  { "text": "you to the ", "color": "yellow" }, \
  { "text": "boss-fight ", "color": "aqua" }, \
  { "text": "in ", "color": "yellow" }, \
  { "text": "3s", "color": "light_purple" }, \
  { "text": "...", "color": "yellow" } \
] }

schedule function omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/confirm/teleport_animation 3s replace
