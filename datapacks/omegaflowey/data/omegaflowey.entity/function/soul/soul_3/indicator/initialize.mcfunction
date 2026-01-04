function omegaflowey.entity:soul/shared/indicator/initialize
tag @s add soul_3
data merge entity @s { CustomName:'"Soul 3 Indicator"' }

# Set scores
scoreboard players set @s omegaflowey.soul.clock.i -1

# x start point of each bullet row
scoreboard players set @s omegaflowey.soul.bullet.position.x 2250
# z start/end points of each bullet row
scoreboard players set @s omegaflowey.soul.bullet.position.z -7700
# z-distance between bullets in the bullet grid
scoreboard players set @s omegaflowey.soul.bullet.position.dz 400
scoreboard players set @s omegaflowey.soul.indicator.bullets.total 6
scoreboard players set @s omegaflowey.soul.indicator.rate 20

scoreboard players set @s omegaflowey.soul.indicator.bullets.cumulative-total 0

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.3 indicator_uuid set from storage gu:main out
