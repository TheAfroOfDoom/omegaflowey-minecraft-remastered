## The active player died after being damaged by a Flowey attack

# Show custom death message
# TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
tellraw @a[ \
  x=-186, dx=91, y=10, dy=95, z=12, dz=95, \
  tag=omegaflowey.player \
] [ \
  { "selector": "@s"}, \
  " was slain by ", \
  { "text": "Omega Flowey", "color": "yellow" } \
]

# Run outside tvscreen death animation
function omegaflowey.main:summit/room/outside/setup/tv_screen/death_animation with storage omegaflowey:decorative

# Re-enable `showDeathMessages` if it was enabled previously
execute if score @s omegaflowey.math.0 matches 1 run gamerule showDeathMessages true

# Summit stats
scoreboard players add #omegaflowey.telemetry.stats.total_deaths omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_died_to_flowey matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_deaths omegaflowey.global.flag 1
scoreboard players set @s omegaflowey.player.summit.has_died_to_flowey 1
