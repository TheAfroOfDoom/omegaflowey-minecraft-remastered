function _:tick

# Run heartbeat
execute as @a at @s run function entity:player/tick
# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute as @e[x=-186, dx=91, y=12, dy=93, z=12, dz=95, tag=omega-flowey-remastered] at @s run \
  function entity:tick
