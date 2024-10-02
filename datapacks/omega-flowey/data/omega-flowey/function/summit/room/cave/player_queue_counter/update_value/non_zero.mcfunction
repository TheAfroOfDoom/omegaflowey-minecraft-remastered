$data modify entity @e[type=minecraft:text_display, tag=players-in-queue-count, limit=1] text set value \
  '[{ "bold": true, "color": "yellow", "text": "$(player_queue_count)" }]'
