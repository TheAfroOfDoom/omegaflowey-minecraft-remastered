execute if entity @a[tag=omegaflowey.player.fighting_flowey] run function utils:log/self { text_component: '[ \
  { "color": "yellow", "text": "Cannot join the boss-fight: " }, \
  { "color": "red", "text": "another player " }, \
  { "color": "yellow", "text": "is already fighting Flowey!" } \
  ]' \
}
execute if entity @a[tag=omegaflowey.player.fighting_flowey] run return 0

function entity:directorial/boss_fight/summit/origin/at { \
 command: "function entity:directorial/boss_fight/summit/player/join_bossfight" \
}
