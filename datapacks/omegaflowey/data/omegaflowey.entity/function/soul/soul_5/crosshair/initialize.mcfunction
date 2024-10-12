data modify entity @s CustomName set value '"Soul 5 Crosshair"'

# Append new crosshair to parent indicator's crosshair array for iteration later
function gu:generate
data modify storage omegaflowey:soul.5.indicator crosshairs prepend from storage gu:main out

# Add tags
tag @s add omega-flowey-remastered
tag @s add soul
tag @s add soul_5
tag @s add soul-crosshair
