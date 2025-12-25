# NOTE: dx-volume selection is weird.
# you need to subtract -1 from each dx/dy/dz bc the game is stupid.
#
# but you can't just put a negative dy (1-0.625 => -0.375), bc then
# the hitbox will just travel downwards (need a min length of 1 for each dimension)
#
# so we just move the hitbox further down enough to accommodate this

# NOTE: at 0-deg rotation, the width is 4.8 blocks exactly
# but we can't rotate hitbox checks, so we shrink that to 4 blocks
# so the bullets aren't super difficult to jump over when they're
# moving at 45-degrees

execute \
  positioned ~-2.0 ~-0.375 ~-2.0 \
  as @a[dx=3.0, dy=0, dz=3.0, tag=omegaflowey.player.fighting_flowey] at @s run \
  function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/bullet/hitbox/loop/as_intersected_player
