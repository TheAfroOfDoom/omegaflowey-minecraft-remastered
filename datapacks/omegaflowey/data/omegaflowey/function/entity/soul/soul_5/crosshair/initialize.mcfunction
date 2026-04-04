data modify entity @s CustomName set value '"Soul 5 Crosshair"'
execute on passengers if entity @s[tag=aj.omegaflowey_soul_5_crosshair.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 } }

# Append new crosshair to parent indicator's crosshair array for iteration later
function gu:generate
data modify storage omegaflowey:soul.5.indicator crosshairs prepend from storage gu:main out

# Add tags
tag @s add omega-flowey-remastered
tag @s add soul
tag @s add soul_5
tag @s add soul-crosshair
