# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
$execute \
  as @a[x=-186, dx=91, y=12, dy=93, z=12, dz=95] \
  unless entity @s[tag=!omegaflowey.player.fighting_flowey, tag=!omegaflowey.player.room.spectator_box] \
  run $(command)
