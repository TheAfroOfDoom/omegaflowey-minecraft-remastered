# Append new crosshair to parent indicator's crosshair array for iteration later
function gu:generate
data modify storage soul:soul_5.indicator crosshairs prepend from storage gu:main out

# Face parent indicator
$teleport @s ~ ~ ~ facing entity $(indicator_uuid)

# Remove tags
tag @s remove soul-crosshair-new

# TODO: fix crosshair summoning rotation desync
# TODO: why is soul_5 saved showing blue soul? (soul 2)
# TODO: make random weight 0 when previous; i just got 3 finger guns in a row T_T
