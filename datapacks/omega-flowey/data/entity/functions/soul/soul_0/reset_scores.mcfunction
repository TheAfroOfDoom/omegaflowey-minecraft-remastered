# TODO(): validate these soul parameters
scoreboard players set #soul-0 soul.executor.clock.length 365
scoreboard players set #soul-0 soul.bullet.position.dx 825
scoreboard players set #soul-0 soul.bullet.position.dz 825
# x0/z0 are at e.g. -21.51 instead of -21.50 so that when we summon at something without a decimal (e.g. 3.0),
# Minecraft doesn't auto center the coordinate.
# if you set this to `-2150`, you'll see a non-uniform grid
scoreboard players set #soul-0 soul.bullet.position.x -4951
scoreboard players set #soul-0 soul.bullet.position.x.end 6000
scoreboard players set #soul-0 soul.bullet.position.z -13001
scoreboard players set #soul-0 soul.bullet.position.z.end -4000
