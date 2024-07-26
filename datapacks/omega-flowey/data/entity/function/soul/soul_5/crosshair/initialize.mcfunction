# Append new crosshair to parent indicator's crosshair array for iteration later
function gu:generate
data modify storage soul:soul_5.indicator crosshairs prepend from storage gu:main out

# Face parent indicator
$teleport @s ~ ~ ~ facing entity $(indicator_uuid)

# Remove tags
tag @s remove soul-crosshair-new
