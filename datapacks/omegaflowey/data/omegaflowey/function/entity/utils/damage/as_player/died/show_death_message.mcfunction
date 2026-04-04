## Show custom death message

# Locally
# TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute \
  unless score #omegaflowey.bossfight.show_death_message_globally omegaflowey.global.flag matches 1 \
run tellraw @a[ \
  x=-186, dx=91, y=10, dy=95, z=12, dz=95, \
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
