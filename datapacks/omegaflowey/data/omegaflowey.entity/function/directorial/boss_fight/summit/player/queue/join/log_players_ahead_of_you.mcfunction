scoreboard players operation @s omegaflowey.math.0 = #omegaflowey.bossfight.player_queue_count omegaflowey.global.flag
scoreboard players remove @s omegaflowey.math.0 1
function omegaflowey.utils:log/self { text_component: ' \
  [ \
    { "text": "Added you to the queue! There are ", "color": "yellow" }, \
    { "score": { "name": "@s", "objective": "omegaflowey.math.0" }, "bold": true, "color": "aqua" }, \
    { "text": " players ahead of you", "color": "yellow" } \
  ]' \
}
