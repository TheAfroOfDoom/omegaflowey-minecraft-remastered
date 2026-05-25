execute as @e[ \
  x=97.0, y=51.375, z=-14.5, distance=..0.01, \
  type=minecraft:text_display, \
  tag=join-queue-title, \
  limit=1 \
] run data modify entity @s text set value [ \
  { "text": "FIGHT\n", "color": "red", "bold": true, "underlined": false }, \
  { "text": "DISABLED", "underlined": true } \
]

execute as @e[ \
  x=97.0, y=51.375, z=-14.5, distance=..0.01, \
  type=minecraft:interaction, \
  tag=join-queue-interaction, \
  limit=1 \
] run data modify entity @s response set value false

execute as @e[ \
  x=99.5, y=21.375, z=7.6875, distance=..0.01, \
  type=minecraft:text_display, \
  tag=join-queue-2-title, \
  limit=1 \
] run data modify entity @s text set value [ \
  { "text": "FIGHT\n", "color": "red", "bold": true, "underlined": false }, \
  { "text": "DISABLED", "underlined": true } \
]

execute as @e[ \
  x=99.5, y=21.375, z=7.6875, distance=..0.01, \
  type=minecraft:interaction, \
  tag=join-queue-2-interaction, \
  limit=1 \
] run data modify entity @s response set value false

scoreboard players set #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag 1

function omegaflowey:entity/directorial/boss_fight/summit-2026/player/queue/reset
