data merge storage omegaflowey:utils.damage { damage: 2, radius: 1.5, source: 'flies.bullet' }
execute positioned ~ ~-0.5 ~ run function omegaflowey:entity/utils/damage with storage omegaflowey:utils.damage

execute if entity @s[tag=is_terminating] run function omegaflowey:entity/hostile/omega-flowey/attack/flies/bullet/loop/terminating
execute if entity @s[tag=is_terminating] run return 0

# Move forward
function omegaflowey:entity/hostile/omega-flowey/attack/flies/bullet/loop/move

# Begin terminating after reaching the venus fly trap's mouth
function omegaflowey:entity/group/start
execute if entity @e[scores={omegaflowey.group.id=0},tag=attack-indicator,tag=flies,distance=..5] run tag @s add is_terminating
function omegaflowey:entity/group/end

# guard against flies who move past the fly trap and outside the arena due to e.g. lag
# NOTE: TAG_SUMMIT_2026_HARDCODED
execute unless entity @s[\
  x=52, dx=32, \
  y=-30, dy=50, \
  z=-34, dz=39 \
] run tag @s add is_terminating
