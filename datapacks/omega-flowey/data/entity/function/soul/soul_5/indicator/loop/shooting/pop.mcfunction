# start aiming at next crosshair next tick
data modify storage soul:soul_5.indicator next_crosshair_uuid set from storage soul:soul_5.indicator crosshairs[-1]
tag @s add soul_5.shooting.rotating

# pop element from list
data remove storage soul:soul_5.indicator crosshairs[-1]
