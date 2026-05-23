execute as @e[ \
    x=-141.0, dx=2, y=43.0, dy=2, z=38.0, dz=2, \
    type=minecraft:text_display, \
    tag=players-in-queue-count, \
    tag=omega-flowey-remastered, \
    limit=1 \
] run function omegaflowey:main/summit-2026/room/ruins/player_queue_counter/update_value/as_text_display
