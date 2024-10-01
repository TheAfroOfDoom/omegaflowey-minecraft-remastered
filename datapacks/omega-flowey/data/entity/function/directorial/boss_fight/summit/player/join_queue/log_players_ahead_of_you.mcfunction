scoreboard players operation @s math.0 = #omega-flowey.bossfight.player_queue_count global.flag
scoreboard players remove @s math.0 1
function utils:log/self { text_component: '[\
  { "color": "yellow", "text": "Added you to the queue! There are " }, \
  { "bold": true, "color": "aqua", "score": { "name": "@s", "objective": "math.0" } }, \
  { "color": "yellow", "text": " players ahead of you" } \
  ]' \
}
