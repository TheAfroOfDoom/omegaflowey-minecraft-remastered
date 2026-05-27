scoreboard players add @s omegaflowey.attack.clock.i 1

# make visible 1-tick after spawning (after has rotated)
execute if score @s[tag=!is_terminating] omegaflowey.attack.clock.i matches 0 \
  on passengers if entity @s[tag=aj.omegaflowey_housefly.bone] run \
  data merge entity @s { teleport_duration: 1, view_range: 1 }

data merge storage omegaflowey:utils.damage { damage: 2, radius: 1.5, source: 'flies.bullet' }
execute positioned ~ ~-0.5 ~ run function omegaflowey:entity/utils/damage with storage omegaflowey:utils.damage

execute if entity @s[tag=is_terminating] run return run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/bullet/loop/terminating

# Move forward
function omegaflowey:entity/hostile/omega-flowey/attack/flies/bullet/loop/move

# Begin terminating after reaching the venus fly trap's mouth
execute if entity @s[tag=is_flipped] run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/bullet/loop/check_begin_terminating with storage omegaflowey:attack.flies.flipped
execute if entity @s[tag=!is_flipped] run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/bullet/loop/check_begin_terminating with storage omegaflowey:attack.flies.nonflipped

# guard against flies who move past the fly trap and outside the arena due to e.g. lag
# NOTE: TAG_SUMMIT_2026_HARDCODED
execute unless entity @s[\
  x=52, dx=32, \
  y=-30, dy=50, \
  z=-34, dz=39 \
] run tag @s add is_terminating
