function entity:soul/soul_5/bullet/summon
tag @s remove soul_5.shooting.rotating

$execute as $(next_crosshair_uuid) run function entity:soul/soul_5/crosshair/terminate
