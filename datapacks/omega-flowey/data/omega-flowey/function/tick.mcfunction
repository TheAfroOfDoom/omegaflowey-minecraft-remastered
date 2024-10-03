function _:tick

# Run heartbeat
execute as @a at @s run function entity:player/tick
# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute as @e[x=-185, dx=90, y=13, dy=72, z=12, dz=90, tag=omega-flowey-remastered] at @s run \
  function entity:tick
