# TODO(): validate these soul parameters
scoreboard players set #soul-0 soul.executor.clock.length 303
scoreboard players set #soul-0 soul.bullet.position.dx 350
scoreboard players set #soul-0 soul.bullet.position.dz 350
# x0/z0 are at e.g. -21.51 instead of -21.50 so that when we summon at something without a decimal (e.g. 3.0),
# Minecraft doesn't auto center the coordinate.
# if you set this to `-2150`, you'll see a non-uniform grid
scoreboard players set #soul-0 soul.bullet.position.x -2151
scoreboard players set #soul-0 soul.bullet.position.x.end 2250
scoreboard players set #soul-0 soul.bullet.position.z -351
scoreboard players set #soul-0 soul.bullet.position.z.end 1950
