data modify entity @s CustomName set value '"Soul 5 Gun"'

# Set scores
scoreboard players set @s omegaflowey.soul.clock.i -1

scoreboard players operation @s omegaflowey.soul.indicator.bullets.total = #omegaflowey.soul.5 omegaflowey.soul.indicator.bullets.total
scoreboard players operation @s omegaflowey.soul.indicator.bullets.remaining = @s omegaflowey.soul.indicator.bullets.total

scoreboard players set @s omegaflowey.soul.indicator.bullets.cumulative-total 0

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage soul:soul_5 indicator_uuid set from storage gu:main out
data modify storage soul:soul_5.indicator indicator_uuid set from storage gu:main out

# Initialize crosshair array
data modify storage soul:soul_5.indicator crosshairs set value []

# Add tags
tag @s add omega-flowey-remastered
tag @s add soul
tag @s add soul-indicator
tag @s add soul_5
tag @s add soul_5.idle
