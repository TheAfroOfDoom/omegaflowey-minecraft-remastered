tag @s add omega-flowey-remastered
tag @s add soul
tag @s add soul_5
tag @s add math-marker

$teleport @s ~ ~ ~ facing entity $(next_crosshair_uuid) eyes
execute store result storage omegaflowey:soul.5.indicator yaw_to_crosshair int 1 run data get entity @s Rotation[0] 100
function omegaflowey.entity:soul/soul_5/indicator/loop/shooting/rotate/marker/terminate
