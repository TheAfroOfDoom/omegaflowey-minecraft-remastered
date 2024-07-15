# Set scores
scoreboard players set @s soul.clock.i -1

scoreboard players operation @s soul.indicator.bullets.total = #soul-5 soul.indicator.bullets.total
scoreboard players operation @s soul.indicator.bullets.remaining = @s soul.indicator.bullets.total

# Store this indicator's UUID to a global storage for later reference
function gu:generate
data modify storage soul:soul_5.indicator indicator_uuid set from storage gu:main out

# Add tags
tag @s add soul_5.idle

# Remove tags
tag @s remove soul-indicator-new
