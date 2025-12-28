execute as @e[ \
  x=-137.5, y=43.5, z=42.5, distance=..0.01, \
  type=minecraft:text_display, \
  tag=join-queue-title, \
  limit=1 \
] run data modify entity @s text set value [ \
  { "text": "JOIN QUEUE", "color": "light_purple", "bold": true, "underlined": true } \
]

execute as @e[ \
  x=-137.5, y=43.5, z=42.5, distance=..0.01, \
  type=minecraft:interaction, \
  tag=join-queue-interaction, \
  limit=1 \
] run data modify entity @s response set value true

execute as @e[ \
  x=-135.0, y=39.0, z=46.25, distance=..0.01, \
  type=minecraft:text_display, \
  tag=join-queue-2-title, \
  limit=1 \
] run data modify entity @s text set value [ \
  { "text": "JOIN QUEUE", "color": "light_purple", "bold": true, "underlined": true } \
]

execute as @e[ \
  x=-135.0, y=39.0, z=46.25, distance=..0.01, \
  type=minecraft:interaction, \
  tag=join-queue-2-interaction, \
  limit=1 \
] run data modify entity @s response set value true

scoreboard players set #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag 0
