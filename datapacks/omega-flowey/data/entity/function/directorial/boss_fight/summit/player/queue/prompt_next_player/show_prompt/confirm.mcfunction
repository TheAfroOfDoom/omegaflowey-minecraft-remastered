function entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/shared

function utils:log/self { text_component: '[ \
  { "text": "Teleporting ", "color": "green" }, \
  { "text": "you to the ", "color": "yellow" }, \
  { "text": "boss-fight", "color": "aqua" }, \
  { "text": "...", "color": "yellow" } \
]' }

function entity:directorial/boss_fight/summit/origin/at { \
 command: "function entity:directorial/boss_fight/summit/player/join_bossfight" \
}
