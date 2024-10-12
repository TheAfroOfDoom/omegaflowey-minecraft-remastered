# TODO(88): validate these soul parameters
# length this soul event will last if the act button is never grabbed
scoreboard players set #soul-0 omegaflowey.soul.executor.clock.length 365
# x/z spans of the bullet grid
scoreboard players set #soul-0 omegaflowey.soul.bullet.position.dx 825
scoreboard players set #soul-0 omegaflowey.soul.bullet.position.dz 825
# x/z start/end points of the bullet grid
scoreboard players set #soul-0 omegaflowey.soul.bullet.position.x -4951
scoreboard players set #soul-0 omegaflowey.soul.bullet.position.x.end 5175
scoreboard players set #soul-0 omegaflowey.soul.bullet.position.z -13001
scoreboard players set #soul-0 omegaflowey.soul.bullet.position.z.end -4000
# NOTE: bullets start summoning _at_ exactly x0/z0, but likely won't finish summoning (their last column/row)
# at x.end / z.end we step using dx/dz and dx/dz likely doesn't evenly distribute into the grid's total width/length
# NOTE: x0/z0 are at e.g. -21.51 instead of -21.50 so that when we summon at something without a decimal (e.g. 3.0),
# Minecraft doesn't auto center the coordinate. if you set this to `-2150`, you'll see a non-uniform grid
