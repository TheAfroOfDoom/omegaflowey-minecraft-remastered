execute as @e[ \
  x=-137.5, y=43.5, z=42.5, distance=..0.01, \
  type=minecraft:text_display, \
  tag=join-queue-title, \
  limit=1 \
] run data modify entity @s text set value '[ \
  { "text": "FIGHT\\n", "color": "red", "bold": true, "underlined": false }, \
  { "text": "DISABLED", "underlined": true } \
]'

execute as @e[ \
  x=-137.5, y=43.5, z=42.5, distance=..0.01, \
  type=minecraft:interaction, \
  tag=join-queue-interaction, \
  limit=1 \
] run data modify entity @s response set value false

execute as @e[ \
  x=-135.75, y=38.5, z=46.25, distance=..0.01, \
  type=minecraft:text_display, \
  tag=join-queue-2-title, \
  limit=1 \
] run data modify entity @s text set value '[ \
  { "text": "FIGHT\\n", "color": "red", "bold": true, "underlined": false }, \
  { "text": "DISABLED", "underlined": true } \
]'

execute as @e[ \
  x=-135.75, y=38.5, z=46.25, distance=..0.01, \
  type=minecraft:interaction, \
  tag=join-queue-2-interaction, \
  limit=1 \
] run data modify entity @s response set value false

scoreboard players set #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag 1

function omegaflowey.entity:directorial/boss_fight/summit/player/queue/reset
