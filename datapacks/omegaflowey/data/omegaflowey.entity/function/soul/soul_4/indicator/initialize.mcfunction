function omegaflowey.entity:soul/shared/indicator/initialize
tag @s add soul_4
data merge entity @s { CustomName:'"Soul 4 Indicator"' }

# Set scores
scoreboard players set @s omegaflowey.soul.clock.i -22
scoreboard players set @s omegaflowey.soul.indicator.rate 16

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.4 indicator_uuid set from storage gu:main out
