function _:tick

# Run heartbeat
execute as @a at @s run function omegaflowey:entity/player/tick
# # NOTE: TAG_SUMMIT_2026_HARDCODED_GLOBAL_VOLUME
execute as @e[ \
  x=33, dx=88, y=-10, dy=171, z=-47, dz=73, \
  tag=omega-flowey-remastered \
] at @s run \
  function omegaflowey:entity/tick
