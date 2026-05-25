execute as @e[ \
  x=97.0, y=51.375, z=-14.5, distance=..0.01, \
  type=minecraft:text_display, \
  tag=join-queue-title, \
  limit=1 \
] run data modify entity @s text set value [ \
  { "text": "JOIN QUEUE", "color": "light_purple", "bold": true, "underlined": true } \
]

execute as @e[ \
  x=97.0, y=51.375, z=-14.5, distance=..0.01, \
  type=minecraft:interaction, \
  tag=join-queue-interaction, \
  limit=1 \
] run data modify entity @s response set value true

execute as @e[ \
  x=99.5, y=21.375, z=7.6875, distance=..0.01, \
  type=minecraft:text_display, \
  tag=join-queue-2-title, \
  limit=1 \
] run data modify entity @s text set value [ \
  { "text": "JOIN QUEUE", "color": "light_purple", "bold": true, "underlined": true } \
]

execute as @e[ \
  x=99.5, y=21.375, z=7.6875, distance=..0.01, \
  type=minecraft:interaction, \
  tag=join-queue-2-interaction, \
  limit=1 \
] run data modify entity @s response set value true

scoreboard players set #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag 0
