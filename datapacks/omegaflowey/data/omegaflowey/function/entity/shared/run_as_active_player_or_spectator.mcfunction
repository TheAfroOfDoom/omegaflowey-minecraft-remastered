# NOTE: TAG_SUMMIT_2026_HARDCODED_GLOBAL_VOLUME
$execute \
  as @a[predicate=summit.booth:omegaflowey/in_bounding_box/global] \
  unless entity @s[tag=!omegaflowey.player.fighting_flowey, tag=!omegaflowey.player.room.spectator_box] \
  run $(command)
# $execute \
  as @a[x=25, dx=96, y=-10, dy=171, z=-47, dz=73] \
  unless entity @s[tag=!omegaflowey.player.fighting_flowey, tag=!omegaflowey.player.room.spectator_box] \
  run $(command)
