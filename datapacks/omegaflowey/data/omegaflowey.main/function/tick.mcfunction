function _:tick

# Run heartbeat
execute as @a at @s run function omegaflowey.entity:player/tick
# # NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
# execute as @e[x=-186, dx=91, y=10, dy=95, z=12, dz=95, tag=omega-flowey-remastered] at @s run \
#   function omegaflowey.entity:tick
execute as @e[tag=omega-flowey-remastered] at @s run function omegaflowey.entity:tick
