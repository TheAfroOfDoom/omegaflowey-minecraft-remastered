execute if score #omega-flowey.bossfight.player_queue_count global.flag matches 0 run \
  data modify entity @e[type=minecraft:text_display, tag=players-in-queue-count, limit=1] text set value \
    '[{ "bold": true, "color": "green", "text": "0" }]'
execute if score #omega-flowey.bossfight.player_queue_count global.flag matches 0 run return 0

execute store result storage omegaflowey:bossfight player_queue_count int 1 run \
  scoreboard players get #omega-flowey.bossfight.player_queue_count global.flag
function omega-flowey:summit/room/cave/player_queue_counter/update_value/non_zero with storage omegaflowey:bossfight
