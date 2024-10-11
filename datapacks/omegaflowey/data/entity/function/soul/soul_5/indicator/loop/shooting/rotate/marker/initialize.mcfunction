tag @s add omega-flowey-remastered
tag @s add soul
tag @s add soul_5
tag @s add math-marker

$teleport @s ~ ~ ~ facing entity $(next_crosshair_uuid) eyes
data modify storage soul:soul_5.indicator yaw_to_crosshair set from entity @s Rotation[0]
function entity:soul/soul_5/indicator/loop/shooting/rotate/marker/terminate
