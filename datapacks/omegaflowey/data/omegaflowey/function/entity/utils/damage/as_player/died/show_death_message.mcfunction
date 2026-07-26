## Show custom death message

# Locally
# TAG_SUMMIT_2026_HARDCODED_GLOBAL_VOLUME
execute \
  unless score #omegaflowey.bossfight.show_death_message_globally omegaflowey.global.flag matches 1 \
run tellraw @a[ \
  tag=omegaflowey.player, \
  predicate=summit.booth:omegaflowey/in_booth \
] [ \
  { "selector": "@s"}, \
  " was slain by ", \
  { "text": "Omega Flowey", "color": "yellow" } \
]
# execute \
  unless score #omegaflowey.bossfight.show_death_message_globally omegaflowey.global.flag matches 1 \
run tellraw @a[ \
  x=25, dx=96, y=-10, dy=171, z=-47, dz=73, \
  tag=omegaflowey.player \
] [ \
  { "selector": "@s"}, \
  " was slain by ", \
  { "text": "Omega Flowey", "color": "yellow" } \
]

# Globally
execute \
  if score #omegaflowey.bossfight.show_death_message_globally omegaflowey.global.flag matches 1 \
run tellraw @a [ \
  { "selector": "@s"}, \
  " was slain by ", \
  { "text": "Omega Flowey", "color": "yellow" } \
]
