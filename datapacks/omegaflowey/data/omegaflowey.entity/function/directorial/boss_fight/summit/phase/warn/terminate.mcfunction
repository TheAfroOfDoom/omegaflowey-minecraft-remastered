function omegaflowey.main:telemetry/bossfight/tag/end { name: "bossfight.phase.warn" }

# Remove tags
tag @s remove boss_fight.phase.warn

# Little hacky, but we sometimes see dentata-snakes leaving the arena at the start of the soul phase
# if the timing works out. So we manually remove them here just in case
# TAG_SUMMIT_HARDCODED_ARENA_VOLUME
execute as @e[ \
  x=-186, dx=61, y=10, dy=46, z=47, dz=60, \
  type=minecraft:item_display, \
  tag=dentata-snakes, \
  tag=attack-bullet, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/bullet/terminate

# Next phase
function omegaflowey.entity:directorial/boss_fight/summit/phase/soul/initialize with storage omegaflowey:bossfight
